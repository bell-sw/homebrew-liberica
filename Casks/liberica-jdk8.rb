cask 'liberica-jdk8' do
  version '1.8.0,232'
  sha256 '26ec9ce0393a6baa1750bf605f1408ab1a2d133475764087259d9e787da753b1'

  url "https://download.bell-sw.com/java/8u232+10/bellsoft-jdk8u232+10-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u232+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.1.8.0_232'

end
