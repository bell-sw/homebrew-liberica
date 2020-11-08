cask 'liberica-jre11' do
  desc "100% open-source Java implementation"
  version '11.0.9.1,1'
  sha256 '6fb327cb5af5980dfd418edbfab2aecc1c9cd249f9eee4ead3179c0952426f83'

  url "https://download.bell-sw.com/java/11.0.9.1%2B1/bellsoft-jre11.0.9.1%2B1-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.9.1+1-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

