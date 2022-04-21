class LibericaJdkAT11Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jdk11.0.15%2B10-linux-amd64-full.tar.gz"
  version "11.0.15.10"
  sha256 "ffaf589e1e93a151c51a5be2f86ba42e8c5a4fa90e097fca1d76ebe1202ecef2"

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

