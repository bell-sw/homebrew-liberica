class LibericaJdkAT25 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jdk25.0.5.1%2B5-linux-amd64.tar.gz"
  version "25.0.5.1.5"
  sha256 "d27deff2b71c670c1603aa31195ccc0e28c56ccab2495231fa58a48ee4a8b1c4"

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

