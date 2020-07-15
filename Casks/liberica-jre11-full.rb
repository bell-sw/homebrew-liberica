cask 'liberica-jre11-full' do
  version '11.0.8,10'
  sha256 '73ed9e261200a7c3bbac986a613936c2191467b938e4abdab9b5a44792644d3b'

  url "https://download.bell-sw.com/java/11.0.8%2B10/bellsoft-jre11.0.8%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.8+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end
