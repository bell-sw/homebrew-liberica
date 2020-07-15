class LibericaJdkAT14Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/14.0.2%2B13/bellsoft-jdk14.0.2%2B13-linux-amd64-lite.tar.gz"

  version "14.0.2"
  sha256 "7855507bdf788dbfe055869c8b50579f1c756047902a005ff8515df6c4aa3652"

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
