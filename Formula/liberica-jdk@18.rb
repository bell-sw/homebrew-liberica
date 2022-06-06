class LibericaJdkAT18 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jdk18.0.1.1%2B2-linux-amd64.tar.gz"
  version "18.0.1.1.2"
  sha256 "40f464951af5fb5eaf4b9f775004594fa2fcbe39e18e2acb71983ab154b7a5a1"

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

