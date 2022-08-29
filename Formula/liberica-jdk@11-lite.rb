class LibericaJdkAT11Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jdk11.0.16.1%2B1-linux-amd64-lite.tar.gz"
  version "11.0.16.1.1"
  sha256 "0f749345e50932ebc4cdd0207343c86af563aab09c460d3c72aa13b6753a921e"

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

