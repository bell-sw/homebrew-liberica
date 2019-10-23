cask 'liberica-jre8' do
  version '1.8.0,232'
  sha256 '78f994b2ac8ead78feefc688407783bb2fd2a924878f5436484c48ce519fbc47'

  url "https://download.bell-sw.com/java/8u232%2B10/bellsoft-jre8u232%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u232+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre.1.8.0_232'

end
