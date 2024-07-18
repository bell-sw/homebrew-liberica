class LibericaJdk < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/8u422%2B6/bellsoft-jdk8u422%2B6-linux-amd64.tar.gz"
  version "1.8.0.422"
  sha256 "b7bd03111261047c23f9538cf3ffb7fd74d6622ed94ec08c0662a9592e6f1f9e"

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

