class LibericaJdkAT27Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jdk27.0.1.0.3%2B5-linux-amd64-lite.tar.gz"
  version "27.0.1.0.3.5"
  sha256 "58a02edb2d013bc496acd39fef00cfbbc652da63d906797ae8ca814c76071e51"

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

