class LibericaJdkAT16 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jdk16.0.2%2B7-linux-amd64.tar.gz"
  version "16.0.2.7"
  sha256 "d447fb2c8cf2e4b4fdf136f18b4863d80797cc13954af5d51f792a49eb45694e"

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

