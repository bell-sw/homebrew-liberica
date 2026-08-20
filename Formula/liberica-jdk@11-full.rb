class LibericaJdkAT11Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jdk11.0.32.1%2B1-linux-amd64-full.tar.gz"
  version "11.0.32.1.1"
  sha256 "c89c470a8eb22fd0f2e4e30b9a3ea698053b43596621856e29f459cc78dff011"

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

