class LibericaJdkAT25Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jdk25.0.5.0.3%2B5-linux-amd64-lite.tar.gz"
  version "25.0.5.0.3.5"
  sha256 "15943cdc94632bd2f299b17e6b9602e5de99631122529bab242f5514ddc00249"

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

