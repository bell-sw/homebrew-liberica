cask 'liberica-jre16' do
  desc "100% open-source Java implementation"
  version '16.0.1,9'

  if Hardware::CPU.intel?
    sha256 '91fb5de1559b360e5cb503c77f17d36e715098b8f2815a02ef46244c4fcb2346'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jre16.0.1%2B9-macos-amd64.pkg"
    pkg 'bellsoft-jre16.0.1+9-macos-amd64.pkg'
  else
    sha256 'b5a69db274594723f0f6b049a23198d66c9589be6c0024b89631a874e5a79967'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jre16.0.1%2B9-macos-aarch64.pkg"
    pkg 'bellsoft-jre16.0.1+9-macos-aarch64.pkg'
  end

  name 'BellSoft Liberica JRE 16'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jre16'

end

