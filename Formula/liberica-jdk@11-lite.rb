class LibericaJdkAT11Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.8%2B10/bellsoft-jdk11.0.8%2B10-linux-amd64-lite.tar.gz"
  version "11.0.8"
  sha256 "a2e037d833ab62d153114117ff509eed7e09079dcdc3f6ee02d8dddd460531de"

  depends_on :linux

  def install
    prefix.install Dir["*"]
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
