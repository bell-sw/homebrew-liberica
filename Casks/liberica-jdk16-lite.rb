cask 'liberica-jdk16-lite' do
  desc "100% open-source Java implementation"
  version '16.0.1,9'

  if Hardware::CPU.intel?
    sha256 '045b602692cfdcbcd85a3be147afa782e9aa173aaab7cef23453642a3fc61341'

    url "https://download.bell-sw.com/java/16.0.1%2B9/bellsoft-jdk16.0.1%2B9-macos-amd64-lite.pkg"
    pkg 'bellsoft-jdk16.0.1+9-macos-amd64-lite.pkg'
  else
    sha256 'af7611581376da23ecc7d3e8160eb9123386ed810bee2c069b92786facd61a7f'

    url "https://download.bell-sw.com/java/16.0.1%2B10/bellsoft-jdk16.0.1%2B10-macos-aarch64-lite.pkg"
    pkg 'bellsoft-jdk16.0.1+10-macos-aarch64-lite.pkg'
  end

  name 'BellSoft Liberica JDK 16'
  homepage 'https://bell-sw.com'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk16-lite'

end

