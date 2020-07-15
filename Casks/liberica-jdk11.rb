cask 'liberica-jdk11' do
  version '11.0.8,10'
  sha256 '3c81a0c0ec6b26276396b46fc108bdd8b4c04ff564ea009d437b7cac0d3c3e4a'

  url "https://download.bell-sw.com/java/11.0.8%2B10/bellsoft-jdk11.0.8%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.8+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end
