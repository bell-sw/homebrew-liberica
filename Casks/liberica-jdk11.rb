cask 'liberica-jdk11' do
  version '11.0.6,10'
  sha256 'f8bf1f8b4620f819f43fb137de1c73411edd092cb84c2d751476e1db901d5c53'

  url "https://download.bell-sw.com/java/11.0.6%2B10/bellsoft-jdk11.0.6%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.6+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end
