cask 'liberica-jre13' do
  version '13.0.2,9'
  sha256 '8595f57810410e0168fec7b8e8090ac9417725d734a2b3fe6a85c5a436a92722'

  url "https://download.bell-sw.com/java/13.0.2%2B9/bellsoft-jre13.0.2%2B9-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre13.0.2+9-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre13'

end
