cask 'liberica-jdk8' do
  version '1.8.0,242'
  sha256 '2037e03ad361a8ff36e8edd8ca1f2d9ec8d8572b41a2e53f06bf0291b1b972d7'

  url "https://download.bell-sw.com/java/8u242%2B7/bellsoft-jdk8u242%2B7-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u242+7-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.1.8.0_242'

end
