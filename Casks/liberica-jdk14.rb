cask 'liberica-jdk14' do
  version '14,36'
  sha256 '1a036680da6012f424146613fdd3d4f08795309083f149b5ae9c34207c4f1452'

  url "https://download.bell-sw.com/java/14%2B36/bellsoft-jdk14%2B36-macos-amd64.pkg"
  name 'BellSoft Liberica JDK 14'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk14+36-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk14'

end
