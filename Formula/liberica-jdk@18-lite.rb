class LibericaJdkAT18Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-linux-amd64-lite.tar.gz"
  version "18.0.1.12"
  sha256 "bbead0fc3b9ae2853bdc283e994971fc7168be4952e65d80c3c969444d6229a1"

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

