class LibericaJdkAT14Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/14.0.1%2B8/bellsoft-jdk14.0.1%2B8-linux-amd64-lite.tar.gz"

  version "14.0.1"
  sha256 "9a0c4102eee7c9995aa6fb0379bccfff3129b8c32d0a234a8234e86155e9467f"

  depends_on :linux

  def install
    prefix.install Dir["*"]
    share.install prefix/"man"
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
