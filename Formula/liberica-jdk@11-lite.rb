class LibericaJdkAT11Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jdk11.0.33.1%2B5-linux-amd64-lite.tar.gz"
  version "11.0.33.1.5"
  sha256 "09f905a98ec53136bc81dcfb725c9c53ba9d1ad8e0af0aaaee0ddec3917ce2e7"

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

