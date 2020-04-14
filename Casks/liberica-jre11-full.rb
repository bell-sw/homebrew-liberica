cask 'liberica-jre11-full' do
  version '11.0.7,10'
  sha256 '807aeac930514ea86c464e56f5d7035b2e51294a30d37ddd979c5a072f280e63'

  url "https://download.bell-sw.com/java/11.0.7%2B10/bellsoft-jre11.0.7%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 11'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre11.0.7+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end
