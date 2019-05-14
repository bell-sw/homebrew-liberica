cask 'liberica-jdk8' do
  version '1.8.0,212'
  sha256 '744ed03878a2a8f3ccc99560742949ff42f2da862f5ce0e16c36c9619b0bf05a'

  url "https://download.bell-sw.com/java/8u212/bellsoft-jdk8u212-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u212-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.1.8.0_212'

end
