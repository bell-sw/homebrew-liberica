class LibericaJdkAT17Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jdk17.0.20.1%2B1-linux-amd64-lite.tar.gz"
  version "17.0.20.1.1"
  sha256 "9b02640743d9858338ff6c04ee6b8d056259f01714c6aee4bb3ced1ad67494ac"

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

