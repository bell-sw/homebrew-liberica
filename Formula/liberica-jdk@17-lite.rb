class LibericaJdkAT17Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jdk17.0.21.0.3%2B5-linux-amd64-lite.tar.gz"
  version "17.0.21.0.3.5"
  sha256 "9a5d5bd8e739aeeb0ced430829472985c5921470b45ea396e08264e369d04a04"

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

