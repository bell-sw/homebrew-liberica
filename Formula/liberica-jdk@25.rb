class LibericaJdkAT25 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jdk25.0.5.0.3%2B5-linux-amd64.tar.gz"
  version "25.0.5.0.3.5"
  sha256 "619c84961ce12dd1cd455719680e22d080bee63dbfe64711e2ef47243114e3ef"

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

