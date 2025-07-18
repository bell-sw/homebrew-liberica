class LibericaJdkAT24Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jdk24.0.2%2B12-linux-amd64-full.tar.gz"
  version "24.0.2.12"
  sha256 "8da8f0d33d85d90921ffd5269fa0cee7be2bb083ce66cc4f40b5f896b3d11295"

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

