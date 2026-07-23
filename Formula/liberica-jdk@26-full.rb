class LibericaJdkAT26Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jdk26.0.2%2B13-linux-amd64-full.tar.gz"
  version "26.0.2.13"
  sha256 "6f1fde1514e515f9e97b1d3a2fabc14bad03a1b177dc3abd7734365763954a48"

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

