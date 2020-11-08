cask 'liberica-jre8' do
  desc "100% open-source Java implementation"
  version '1.8.0,275'
  sha256 '275b0eb2104ec230feaa5883435c02e8ae333263f9abd86782834aab39a8d0c6'

  url "https://download.bell-sw.com/java/8u275%2B1/bellsoft-jre8u275%2B1-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u275+1-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

