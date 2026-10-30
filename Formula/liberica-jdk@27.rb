class LibericaJdkAT27 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/27.0.1.0.3%2B5/bellsoft-jdk27.0.1.0.3%2B5-linux-amd64.tar.gz"
  version "27.0.1.0.3.5"
  sha256 "6e689b8f3a7e1100cb237857cb4f5cabdf806070832f5773dbf73eee00e00a58"

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

