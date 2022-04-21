class LibericaJdkAT18Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-linux-amd64-full.tar.gz"
  version "18.0.1.12"
  sha256 "e76a6a956fddd51e104fe908dfe141b3b7449ce807aa03c47232f129fa265b85"

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

