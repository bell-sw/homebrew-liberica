cask 'liberica-jdk13-full' do
  version '13.0.2,9'
  sha256 'a2fee276e39a876e9384b97fe83e4daaaf34aaf1d65e91c71c66eddf6b8c9b64'

  url "https://download.bell-sw.com/java/13.0.2%2B9/bellsoft-jdk13.0.2%2B9-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk13.0.2+9-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk13-full'

end
