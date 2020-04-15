cask 'liberica-jdk11' do
  version '11.0.7,10'
  sha256 '7c8c574b02d6b7565b9c2b6e727a03e929f01fa8d23b7da61c571578418ff25f'

  url "https://download.bell-sw.com/java/11.0.7%2B10/bellsoft-jdk11.0.7%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.7+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end
