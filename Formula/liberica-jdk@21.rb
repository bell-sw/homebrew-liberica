class LibericaJdkAT21 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jdk21.0.12.1%2B1-linux-amd64.tar.gz"
  version "21.0.12.1.1"
  sha256 "94ae18a66527a54ebaf4490279e03631fcc47dbf262863f099ac9c8f5f525a49"

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

