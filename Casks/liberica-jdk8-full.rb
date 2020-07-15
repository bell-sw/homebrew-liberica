cask 'liberica-jdk8-full' do
  version '1.8.0,262'
  sha256 'f19ee9a33a661069927528e27d02799400fda1d3b4f70c7c4f438d1d7d5761c6'

  url "https://download.bell-sw.com/java/8u262%2B10/bellsoft-jdk8u262%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u262+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end
