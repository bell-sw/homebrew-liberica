cask 'liberica-jdk11' do
  version '11.0.4,10'
  sha256 'a99b1d9e8378b585fad2fe97b7aeff16053d93c814c909d6fa7d3749948ec91a'

  url "https://download.bell-sw.com/java/11.0.4/bellsoft-jdk11.0.4-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.4-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.11.0.4'

end
