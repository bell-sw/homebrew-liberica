cask 'liberica-jdk11-lite' do
  version '11.0.5,11'
  sha256 '1e5c1c01ff47fa7df067510d5695968a28087aac019e7eccd60b72c98ab2188d'

  url "https://download.bell-sw.com/java/11.0.5%2B11/bellsoft-jdk11.0.5%2B11-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.5+11-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.11.0.5'

end
