class LibericaJdkAT11Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.7%2B10/bellsoft-jdk11.0.7%2B10-linux-amd64-lite.tar.gz"
  version "11.0.7"
  sha256 "c3f9c5ee85db69ba81c86a594b9074170822f04d20bc37f46a3d2ca4102a5488"

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
