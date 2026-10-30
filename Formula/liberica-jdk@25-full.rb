class LibericaJdkAT25Full < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jdk25.0.5.0.3%2B5-linux-amd64-full.tar.gz"
  version "25.0.5.0.3.5"
  sha256 "7fc9f107c456c60b5b1afbdf4ed413ca92d42690ed56ed26166efed11620f454"

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

