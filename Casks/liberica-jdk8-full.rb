cask 'liberica-jdk8-full' do
  version '1.8.0,265'
  sha256 '08bad17857a2edc08527eaff2ef8f136b4f11f3ea07dd5ed4abce95ed24f5520'

  url "https://download.bell-sw.com/java/8u265%2B1/bellsoft-jdk8u265%2B1-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u265+1-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end
