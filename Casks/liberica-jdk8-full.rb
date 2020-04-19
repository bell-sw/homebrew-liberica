cask 'liberica-jdk8-full' do
  version '1.8.0,252'
  sha256 '871ec95eeb2a98cac7ef51c4ca30d250b645d4cf5b3886bf668e78dc5111fc3a'

  url "https://download.bell-sw.com/java/8u252%2B9/bellsoft-jdk8u252%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u252+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end
