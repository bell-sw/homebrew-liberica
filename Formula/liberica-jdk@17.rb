class LibericaJdkAT17 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jdk17.0.12%2B10-linux-amd64.tar.gz"
  version "17.0.12.10"
  sha256 "09fc5d8f9ec0874f728d25c9f2fa586db4e949fa1057bafe3b8e59f17915e70b"

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

