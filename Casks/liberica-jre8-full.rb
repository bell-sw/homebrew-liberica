cask 'liberica-jre8-full' do
  desc "100% open-source Java implementation"
  version '1.8.0,275'
  sha256 '611ccd2820ba242dc5db89fe02f2cfa2f36946e06ce9aa5d273a0849b0d3194d'

  url "https://download.bell-sw.com/java/8u275%2B1/bellsoft-jre8u275%2B1-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u275+1-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

