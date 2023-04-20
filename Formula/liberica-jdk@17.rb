class LibericaJdkAT17 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-linux-amd64.tar.gz"
  version "17.0.7.7"
  sha256 "d98941ef6b79de54e4a4918d3c11a6ea2f6bb4c10a69c75ed8440aded7d313fc"

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

