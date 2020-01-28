cask 'liberica-jdk8-full' do
  version '1.8.0,242'
  sha256 '771f3671d7b26c2ecda1287f5cb9fb9209e72185a6c20a7ac1a94798e1c2c15d'

  url "https://download.bell-sw.com/java/8u242%2B7/bellsoft-jdk8u242%2B7-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u242+7-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end
