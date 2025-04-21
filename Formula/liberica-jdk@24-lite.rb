class LibericaJdkAT24Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jdk24.0.1%2B11-linux-amd64-lite.tar.gz"
  version "24.0.1.11"
  sha256 "91bd85101fddbddf9f558199aec142e8d9b16f06877042109d47277fb65ad2a3"

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

