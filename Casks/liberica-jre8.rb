cask 'liberica-jre8' do
  version '1.8.0,242'
  sha256 '9b17cb7d999880509365291098883943d92bc7821d54e7fb25ebaf7598f1c1fa'

  url "https://download.bell-sw.com/java/8u242%2B7/bellsoft-jre8u242%2B7-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u242+7-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end
