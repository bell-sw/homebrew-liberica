cask 'liberica-jdk11-lite' do
  version '11.0.7,10'
  sha256 '9c7208cf081057e89bad28ef71e82a8e4fa33faedb8563ba12a9a3b156187982'

  url "https://download.bell-sw.com/java/11.0.7%2B10/bellsoft-jdk11.0.7%2B10-macos-amd64-lite.pkg"
  name 'BellSoft Liberica JDK 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk11.0.7+10-macos-amd64-lite.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end
