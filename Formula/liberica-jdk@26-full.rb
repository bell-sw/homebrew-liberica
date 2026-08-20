class LibericaJdkAT26Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jdk26.0.2.1%2B1-linux-amd64-full.tar.gz"
  version "26.0.2.1.1"
  sha256 "44c5e4dd2fc24d61307294578fa5dcf4e9b6cb37916b259ae901c118fc4a9b7e"

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

