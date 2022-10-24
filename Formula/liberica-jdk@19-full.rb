class LibericaJdkAT19Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-linux-amd64-full.tar.gz"
  version "19.0.1.11"
  sha256 "c17d3fa763dbcc5f61a769d9ba2f82b4123e0f213f9bb60d13f400ca1931d0af"

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

