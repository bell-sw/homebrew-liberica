class LibericaJdkAT18 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-linux-amd64.tar.gz"
  version "18.0.1.12"
  sha256 "9f5002a883ec6830eb7e7498feb6dc2824f23da186938c4fb7a081310ca157c3"

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

