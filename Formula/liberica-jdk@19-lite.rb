class LibericaJdkAT19Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-linux-amd64-lite.tar.gz"
  version "19.0.2.9"
  sha256 "efc85277a1c10edf4bb73445e962d4892b0e76f70c5a85c3aef78d859d61cb14"

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

