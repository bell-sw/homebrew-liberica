class LibericaJdkAT26Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jdk26.0.1%2B10-linux-amd64-lite.tar.gz"
  version "26.0.1.10"
  sha256 "3b1cf43ae0a7fb15a55e8f57777a79cc1e4339c4c687232cba9b362e58c0ad18"

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

