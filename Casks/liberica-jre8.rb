cask 'liberica-jre8' do
  version '1.8.0,222'
  sha256 '809a6fb9c78b9e6afe678f10ea1b55332c3a55d9be150f7cb91199d78fbe97c3'

  url "https://download.bell-sw.com/java/8u222/bellsoft-jre8u222-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u222-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre.1.8.0_222'

end
