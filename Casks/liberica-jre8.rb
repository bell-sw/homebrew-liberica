cask 'liberica-jre8' do
  desc "100% open-source Java implementation"
  version '1.8.0,282'
  sha256 '9493fdf02b319f7cbf4701ff6e094941397db696bdcec60ba5c367fc1376d053'

  url "https://download.bell-sw.com/java/8u282%2B8/bellsoft-jre8u282%2B8-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u282+8-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

