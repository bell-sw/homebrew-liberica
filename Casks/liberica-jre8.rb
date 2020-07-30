cask 'liberica-jre8' do
  version '1.8.0,265'
  sha256 'a53e0ff7ee5b44af4b532cd8ee76095cadf2e7663e0b52ce202005d561b5a064'

  url "https://download.bell-sw.com/java/8u265%2B1/bellsoft-jre8u265%2B1-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u265+1-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end
