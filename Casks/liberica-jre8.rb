cask 'liberica-jre8' do
  version '1.8.0,222'
  sha256 '20465a11818bbb2ceb3ad8cfb90c58b10beac0d75158d60ba74c20724a0c53f4'

  url "https://download.bell-sw.com/java/8u222/bellsoft-jre8u222-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u222-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre.1.8.0_222'

end
