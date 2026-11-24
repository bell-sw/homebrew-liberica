class LibericaJdkAT27Lite < Formula
  desc "100% open-source Java implementation"
  homepage "https://bell-sw.com/"
  url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jdk27.0.1.1%2B5-linux-amd64-lite.tar.gz"
  version "27.0.1.1.5"
  sha256 "e3a845cc17f337f6787285176ba1fa8878e4c81b87cd8b8a22616a169aad642d"

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

