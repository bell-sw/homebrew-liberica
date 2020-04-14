cask 'liberica-jdk8-full' do
  version '1.8.0,252'
  sha256 '792c06eadd0609a0a9fdaa6c03d28b1ce0006bfc29c65484d23a4f237282fa88'

  url "https://download.bell-sw.com/java/8u252%2B9/bellsoft-jdk8u252%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u252+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end
