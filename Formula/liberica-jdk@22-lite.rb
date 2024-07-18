class LibericaJdkAT22Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jdk22.0.2%2B11-linux-amd64-lite.tar.gz"
  version "22.0.2.11"
  sha256 "cb6fb6ea5df47ba8d19f6c8ea79ec93012aabfea1fee8600755440a829694352"

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

