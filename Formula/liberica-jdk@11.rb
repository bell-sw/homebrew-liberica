class LibericaJdkAT11 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jdk11.0.19%2B7-linux-amd64.tar.gz"
  version "11.0.19.7"
  sha256 "138f8bd3801445391ff19d683ea7f3c4662dcd0e2cd0b8ab2a5d3966b05124f8"

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

