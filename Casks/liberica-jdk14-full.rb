cask 'liberica-jdk14-full' do
  version '14,36'
  sha256 '173eb0c8acd88b870902e3f7235317537e07cfbe954e786eba1569b38e6a39e3'

  url "https://download.bell-sw.com/java/14%2B36/bellsoft-jdk14%2B36-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 14'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk14+36-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk14-full'

end
