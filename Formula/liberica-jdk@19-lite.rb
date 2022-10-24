class LibericaJdkAT19Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-linux-amd64-lite.tar.gz"
  version "19.0.1.11"
  sha256 "ae4e83ce6d1e84184af9e2a91d0593c3c6f41669498e7762995cf959ec494023"

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

