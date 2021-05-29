cask 'liberica-jre16' do
  desc "100% open-source Java implementation"
  version '16.0.1,9'

  if Hardware::CPU.intel?
    sha256 '91fb5de1559b360e5cb503c77f17d36e715098b8f2815a02ef46244c4fcb2346'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jre16.0.1%2B9-macos-amd64.pkg"
    pkg 'bellsoft-jre16.0.1+9-macos-amd64.pkg'
  else
    sha256 '623306a7b0721c78786626c7d9f2fedf4ffafc9d36e94b0e236e9e2c375e4b12'

    url "https://download.bell-sw.com/java/16.0.1%2B10/bellsoft-jre16.0.1%2B10-macos-aarch64.pkg"
    pkg 'bellsoft-jre16.0.1+10-macos-aarch64.pkg'
  end

  name 'BellSoft Liberica JRE 16'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jre16'

end

