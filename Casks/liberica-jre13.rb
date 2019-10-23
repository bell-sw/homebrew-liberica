cask 'liberica-jre13' do
  version '13.0.1,9'
  sha256 '203b210a61139bc85a5b4702b19a4e35ac684ab49f3626111b4e81dbd9cc4024'

  url "https://download.bell-sw.com/java/13.0.1/bellsoft-jre13.0.1-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 13'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre13.0.1-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre.13.0.1'

end
