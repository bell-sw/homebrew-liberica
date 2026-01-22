class LibericaJdkAT21Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jdk21.0.10%2B10-linux-amd64-lite.tar.gz"
  version "21.0.10.10"
  sha256 "bb4f2bb217fdcc07d529b7d20720f9d4287effbe404e83c486b2a6bdc4e3641e"

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

