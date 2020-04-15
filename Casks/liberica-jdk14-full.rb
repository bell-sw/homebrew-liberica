cask 'liberica-jdk14-full' do
  version '14.0.1,8'
  sha256 '5a22d8922c0cc0d6bd6882f3d61e16f4ab74b748a1b97df0959af8531182fb7a'

  url "https://download.bell-sw.com/java/14.0.1%2B8/bellsoft-jdk14.0.1%2B8-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 14'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk14.0.1+8-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk14-full'

end
