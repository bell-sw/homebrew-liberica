class LibericaJdkAT11Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jdk11.0.15.1%2B9-linux-amd64-lite.tar.gz"
  version "11.0.15.1.9"
  sha256 "a57286aacd402a264d8333e36f04db580671aa6c2027cd1917bc5b4ca747e312"

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

