cask 'liberica-jdk14-lite' do
  version '14.0.2,13'
  sha256 '661ba9bec1914b34f02d55e011b408081437411cfcf0162133c230f5ae0b5516'

  url "https://download.bell-sw.com/java/14.0.2%2B13/bellsoft-jdk14.0.2%2B13-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 14'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk14.0.2+13-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk14-lite'

end
