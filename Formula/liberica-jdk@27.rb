class LibericaJdkAT27 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jdk27.0.1.1%2B5-linux-amd64.tar.gz"
  version "27.0.1.1.5"
  sha256 "1fc2426c6ba420987d13333b35827087f766063a848b418e4d9f5c4777cfcfbf"

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

