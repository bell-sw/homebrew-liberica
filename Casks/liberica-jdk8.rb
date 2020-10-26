cask 'liberica-jdk8' do
  version '1.8.0,272'
  sha256 '1e11ac5b4c6c92deafbf6ebfe9e52670a33256e7b693c5e4700d8444df9981f2'

  url "https://download.bell-sw.com/java/8u272%2B10/bellsoft-jdk8u272%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u272+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end
