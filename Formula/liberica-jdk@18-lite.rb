class LibericaJdkAT18Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-linux-amd64-lite.tar.gz"
  version "18.0.2.1.1"
  sha256 "b201f5635d087dc13d7fce06485900c75ac674ec9c4e2d77000ec70ea100fa5c"

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

