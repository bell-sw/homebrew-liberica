cask 'liberica-jdk8' do
  version '1.8.0,222'
  sha256 'd90746c32ca4f1072d4d1a1f4c47f76d380abb657eb985a00e151aa7d39b31fa'

  url "https://download.bell-sw.com/java/8u222/bellsoft-jdk8u222-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u222-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.1.8.0_222'

end
