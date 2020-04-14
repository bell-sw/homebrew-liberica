cask 'liberica-jdk8' do
  version '1.8.0,252'
  sha256 '5c390fb8b8e1df8e5f34d36967f36fbcfe6574fe8339a1c0b4d6b5ec978299b6'

  url "https://download.bell-sw.com/java/8u252%2B9/bellsoft-jdk8u252%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u252+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end
