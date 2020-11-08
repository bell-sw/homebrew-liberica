class LibericaJdkAT11 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.9.1%2B1/bellsoft-jdk11.0.9.1%2B1-linux-amd64.tar.gz"
  version "11.0.9.1.1"
  sha256 "786c48fa6429d6a3f0afb189a65f0a43772e42afbab836852b9a1fdfdb8fc502"

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

