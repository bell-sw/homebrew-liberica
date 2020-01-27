class LibericaJdkAT13 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/13.0.2%2B9/bellsoft-jdk13.0.2%2B9-linux-amd64.tar.gz"

  version "13.0.2"
  sha256 "3ae9d14857bd3a371f0c0aab056a6daa06dcad79336b817bc2bbd2b7f0c32158"

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
