cask 'liberica-jdk8' do
  version '1.8.0,252'
  sha256 '19a45fe7f85bbb48460f415bc8b5f6a9154524682779538c683c13487fa9d1de'

  url "https://download.bell-sw.com/java/8u252%2B9/bellsoft-jdk8u252%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u252+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end
