cask 'liberica-jdk8' do
  version '1.8.0,262'
  sha256 '08fffd88a30a514e3af9aa0d155ba3b929fd596eb404e04df7b8bebfb1d9c13f'

  url "https://download.bell-sw.com/java/8u262%2B10/bellsoft-jdk8u262%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u262+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end
