class LibericaJdkAT23Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jdk23.0.2%2B9-linux-amd64-lite.tar.gz"
  version "23.0.2.9"
  sha256 "5b4ccefab3f628f4f324566d66bba975d8166f56b29564ebe6e2aae424eae7a7"

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

