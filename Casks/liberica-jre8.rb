cask 'liberica-jre8' do
  version '1.8.0,252'
  sha256 '7895a90d7399ece1280db67a798683c2628d78d73b8534852298ca301c49259d'

  url "https://download.bell-sw.com/java/8u252%2B9/bellsoft-jre8u252%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u252+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end
