class LibericaJdkAT16Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jdk16.0.2%2B7-linux-amd64-lite.tar.gz"
  version "16.0.2.7"
  sha256 "1de29b129bc212daf613e3f70fa1b3ae894645568944e436c450dd674aa291b1"

  depends_on :linux

  def install
    prefix.install Dir["*"]
    
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

