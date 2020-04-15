cask 'liberica-jre11' do
  version '11.0.7,10'
  sha256 '86935364952f3c14a26fac5965954d4528e00c75f7a681b27c6f8746fd406c00'

  url "https://download.bell-sw.com/java/11.0.7%2B10/bellsoft-jre11.0.7%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.7+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end
