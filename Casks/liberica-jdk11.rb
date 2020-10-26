cask 'liberica-jdk11' do
  version '11.0.9,11'
  sha256 'a579bf1b0b498dd19be2dbfa5091a7aae93fd6a9602f42bec1cc0a10bc9b1f26'

  url "https://download.bell-sw.com/java/11.0.9%2B11/bellsoft-jdk11.0.9%2B11-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.9+11-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end
