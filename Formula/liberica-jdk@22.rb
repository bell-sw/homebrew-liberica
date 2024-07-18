class LibericaJdkAT22 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jdk22.0.2%2B11-linux-amd64.tar.gz"
  version "22.0.2.11"
  sha256 "d34227d5f0cd6986e55d5d35141799a0dcc1d5c4d5b636d4e8a08885c0c74cc4"

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

