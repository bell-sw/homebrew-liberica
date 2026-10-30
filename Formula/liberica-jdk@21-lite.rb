class LibericaJdkAT21Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jdk21.0.13.0.3%2B5-linux-amd64-lite.tar.gz"
  version "21.0.13.0.3.5"
  sha256 "cc25f7e60975893513477904ea993e217d913f139d2c0cc496660a57de5996bb"

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

