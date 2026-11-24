class LibericaJdkAT21Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jdk21.0.13.1%2B5-linux-amd64-full.tar.gz"
  version "21.0.13.1.5"
  sha256 "44e6036a72dd87065e546fde967f5c5cfe0b3a58322e52f2e7a4e196416bf643"

  depends_on :linux

  def install
    prefix.install Dir["*"]
    share.install prefix/"man"
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

