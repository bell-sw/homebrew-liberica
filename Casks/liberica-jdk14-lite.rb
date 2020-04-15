cask 'liberica-jdk14-lite' do
  version '14.0.1,8'
  sha256 '1cc3caa92d9418997a953c2334ce34217ca6b0511e4bad63e142bc92b502aa7d'

  url "https://download.bell-sw.com/java/14.0.1%2B8/bellsoft-jdk14.0.1%2B8-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 14'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk14.0.1+8-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk14-lite'

end
