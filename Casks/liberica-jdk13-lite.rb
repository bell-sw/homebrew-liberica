cask 'liberica-jdk13-lite' do
  version '13,33'
  sha256 '76f0505f4097df0faaba5fad497c865e217bdb3c88061dcb4fdadb9959938f86'

  url "https://download.bell-sw.com/java/13/bellsoft-jdk13-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk13-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.13'

end
