class LibericaJdkAT25 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jdk25.0.4.1%2B1-linux-amd64.tar.gz"
  version "25.0.4.1.1"
  sha256 "acb5cc5abdc2baeaecfa3ec5ba5609bea67121eb99004b27036d397f4a79c152"

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

