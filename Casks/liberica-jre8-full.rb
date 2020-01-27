cask 'liberica-jre8-full' do
  version '1.8.0,242'
  sha256 '98389862bd8f82e28741d9ddb61ab4c17f43f0500304875f76973e29fe7f6bde'

  url "https://download.bell-sw.com/java/8u242%2B7/bellsoft-jre8u242%2B7-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u242+7-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end
