class LibericaJdkAT17Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jdk17.0.20%2B10-linux-amd64-lite.tar.gz"
  version "17.0.20.10"
  sha256 "a5c3efdf06a91d5c96c2bae01ebdf65783e74af8a0a85268a1787ff7da48ad5f"

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

