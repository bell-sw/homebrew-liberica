class LibericaJdkAT11Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.9.1%2B1/bellsoft-jdk11.0.9.1%2B1-linux-amd64-full.tar.gz"
  version "11.0.9.1.1"
  sha256 "8a8147fb8ca345ff9979832fb2c1489eaab0a44a211bff6bc9ba0d8e39380e50"

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

