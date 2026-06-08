class LibericaJdkAT26 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jdk26.0.1%2B10-linux-amd64.tar.gz"
  version "26.0.1.10"
  sha256 "f40ecf7b472cdbf24d8ab60af4be1aeaf944f6c95bd3118167f38f33b83c5cd9"

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

