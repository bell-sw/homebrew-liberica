cask 'liberica-jre8' do
  version '1.8.0,272'
  sha256 '88a4e95c4f36096c70aacf0f6c0ddfedf2ba4c8fe69620303be4c3155b3d8f4f'

  url "https://download.bell-sw.com/java/8u272%2B10/bellsoft-jre8u272%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u272+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end
