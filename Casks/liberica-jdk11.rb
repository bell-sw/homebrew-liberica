cask 'liberica-jdk11' do
  version '11.0.5,11'
  sha256 '007bc6889ce01335b911995dec2438c9c2b0fd3227b3d20e8bb57dd4f1f18947'

  url "https://download.bell-sw.com/java/11.0.5%2B11/bellsoft-jdk11.0.5%2B11-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.5+11-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.11.0.5'

end
