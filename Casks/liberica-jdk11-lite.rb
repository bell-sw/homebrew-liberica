cask 'liberica-jdk11-lite' do
  version '11.0.9,11'
  sha256 '1da78c4ca9a1d016c36e543b6c340ae9bc85b9921643fd9740d8eb87cb34f083'

  url "https://download.bell-sw.com/java/11.0.9%2B11/bellsoft-jdk11.0.9%2B11-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.9+11-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end
