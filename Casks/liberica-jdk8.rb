cask 'liberica-jdk8' do
  version '1.8.0,222'
  sha256 '04dcf907f0891c49f993853a09d8e3d6b9f3f00a9adfa1f9ad409f5b5730146a'

  url "https://download.bell-sw.com/java/8u222/bellsoft-jdk8u222-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u222-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.1.8.0_222'

end
