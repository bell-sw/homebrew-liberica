class LibericaJdkAT25Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jdk25.0.4.1%2B1-linux-amd64-full.tar.gz"
  version "25.0.4.1.1"
  sha256 "74de69863cfa8d58dd49992a97249ad041169ad01daa14a545ef9c7ef173cbd0"

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

