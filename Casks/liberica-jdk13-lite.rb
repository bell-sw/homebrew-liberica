cask 'liberica-jdk13-lite' do
  version '13.0.1,9'
  sha256 'df70048efccab30178bded0a782323317064dd6c0bdccc78d91d3c5e209821be'

  url "https://download.bell-sw.com/java/13.0.1/bellsoft-jdk13.0.1-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk13.0.1-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk.13.0.1'

end
