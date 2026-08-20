class LibericaJdkAT25Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jdk25.0.4.1%2B1-linux-amd64-lite.tar.gz"
  version "25.0.4.1.1"
  sha256 "7cd6e87f3c356d8a971f281033c1a8850c85cf1b20724e6ef398a958e9d6be3d"

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

