class LibericaJdkAT20Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-linux-amd64-lite.tar.gz"
  version "20.0.1.10"
  sha256 "cd3d19261cb04076d616777ca266d64277db9d96df3159ffa0efb7e721dfc73f"

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

