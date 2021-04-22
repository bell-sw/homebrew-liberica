class LibericaJdkAT16Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jdk16.0.1%2B9-linux-amd64-lite.tar.gz"
  version "16.0.1.9"
  sha256 "4e29575954ae6a5924c820bbfef0e218a86f437fc97ffa60fa51607ad21aa322"

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

