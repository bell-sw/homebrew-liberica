cask 'liberica-jre8' do
  version '1.8.0,252'
  sha256 '7a05fa3a5455113d637cd283ce4d18e1978b58834754d93e6112c796694089ea'

  url "https://download.bell-sw.com/java/8u252%2B9/bellsoft-jre8u252%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u252+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end
