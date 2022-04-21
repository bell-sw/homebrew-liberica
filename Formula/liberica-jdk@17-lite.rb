class LibericaJdkAT17Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-linux-amd64-lite.tar.gz"
  version "17.0.3.7"
  sha256 "40aa18952ea2752e70e68a782083964ebb4748e49058668c65d44b82dae2f668"

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

