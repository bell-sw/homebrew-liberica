class LibericaJdkAT24 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jdk24.0.2%2B12-linux-amd64.tar.gz"
  version "24.0.2.12"
  sha256 "0fcf36e604cb4398ffa0fc3c67908a4f8e2b70f00c5ac2ecb2d77c7d6d8fed9d"

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

