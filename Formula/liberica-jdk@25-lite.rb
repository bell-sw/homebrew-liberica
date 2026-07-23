class LibericaJdkAT25Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jdk25.0.4%2B9-linux-amd64-lite.tar.gz"
  version "25.0.4.9"
  sha256 "0e4f651c33cdce36ae52161e8ba4e885bed3e1a919e32c58f42f093f658093dc"

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

