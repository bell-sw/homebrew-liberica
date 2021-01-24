class LibericaJdkAT15 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/15.0.2%2B10/bellsoft-jdk15.0.2%2B10-linux-amd64.tar.gz"
  version "15.0.2.10"
  sha256 "5d558b5fd33cb7c3f55a55ac7ae0d00ae15b6e1f288d34ec543215a403c3faea"

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

