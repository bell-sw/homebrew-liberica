class LibericaJdkAT21Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jdk21.0.5%2B11-linux-amd64-lite.tar.gz"
  version "21.0.5.11"
  sha256 "50a122ba75e4ccdff44bcc7fc8b55fbfcd5a61e0dd3fbf2b6db4452f0e312c12"

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

