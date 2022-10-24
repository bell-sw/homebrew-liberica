class LibericaJdkAT19 < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-linux-amd64.tar.gz"
  version "19.0.1.11"
  sha256 "bbd7b92e5754bef8c7eca585cdce52e6edf015bb7e1c0bfe1bdd9d1837529cb7"

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

