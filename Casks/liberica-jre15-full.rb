cask 'liberica-jre15-full' do
  desc "100% open-source Java implementation"
  version '15.0.2,10'
  sha256 'ac57cd5c494cbc53187ca5837af4b551a74364386eab9c3c3209a50463fbc255'

  url "https://download.bell-sw.com/java/15.0.2%2B10/bellsoft-jre15.0.2%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre15.0.2+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre15-full'

end

