class LibericaJdkAT24Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/24%2B37/bellsoft-jdk24%2B37-linux-amd64-lite.tar.gz"
  version "24.37"
  sha256 "455b908a29dcb9b9649b8a657bded40693e4f1632e07e6476ff11b4371c3124d"

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

