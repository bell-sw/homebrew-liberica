cask 'liberica-jre8-full' do
  version '1.8.0,272'
  sha256 'b73058e0705c3dc7484d489f931832e4dd1bf3af633b47d9a715825e652a257c'

  url "https://download.bell-sw.com/java/8u272%2B10/bellsoft-jre8u272%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u272+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end
