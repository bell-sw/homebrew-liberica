class LibericaJdkAT21Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jdk21.0.4%2B9-linux-amd64-lite.tar.gz"
  version "21.0.4.9"
  sha256 "a6c357061a00bd7f9944c1bf494ba37d4ca9a335e0e52e048d40da95f1d785ea"

  depends_on :linux

  def install
    prefix.install Dir["*"]
    
  end

  test do
    (testpath/"Hello.java").write <<~EOS
      class Hello
      {
        public static void main(String[] args)
        {
          System.out.println("Hello Homebrew");
        }
      }
    EOS
    system bin/"javac", "Hello.java"
    assert_predicate testpath/"Hello.class", :exist?, "Failed to compile Java program!"
    assert_equal "Hello Homebrew\n", shell_output("#{bin}/java Hello")
  end
end

