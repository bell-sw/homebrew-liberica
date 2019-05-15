class LibericaJdkAT12 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/12.0.1/bellsoft-jdk12.0.1-linux-amd64.tar.gz"
  version "12.0.1"
  sha256 "1650d63b0ffd06a5d7f74fc2c4aabaa3678edf8fc9b7aa3769c96ca6a064306d"

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
