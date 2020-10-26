cask 'liberica-jre15' do
  version '15.0.1,9'
  sha256 'e59c9866a84776cbef7d55f9c5c1d6755d513bb770dcfd4fdc8ab81f740149c3'

  url "https://download.bell-sw.com/java/15.0.1%2B9/bellsoft-jre15.0.1%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 15'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre15.0.1+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre15'

end

