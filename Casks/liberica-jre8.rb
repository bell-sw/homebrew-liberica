cask 'liberica-jre8' do
  version '1.8.0,212'
  sha256 '95263cd43fb5692e14ab9c2163c4e99b862efbe5f159282cec55e147249a17eb'

  url "https://download.bell-sw.com/java/8u212/bellsoft-jre8u212-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u212-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre.1.8.0_212'

end
