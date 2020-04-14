cask 'liberica-jdk14' do
  version '14.0.1,8'
  sha256 '8bf8ae7bedc8371aaaad166099d25fa0e7123bd744c3c7925ec7142f0069daee'

  url "https://download.bell-sw.com/java/14.0.1%2B8/bellsoft-jdk14.0.1%2B8-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 14'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk14.0.1+8-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk14'

end
