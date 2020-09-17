cask 'liberica-jdk15-full' do
  version '15.0.0,36'
  sha256 '7fd635ff622168dad5a84e845fca9b5f4e7a26eb25e1fbf830bbefa60133cf6e'

  url "https://download.bell-sw.com/java/15%2B36/bellsoft-jdk15%2B36-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk15+36-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk15-full'

end
