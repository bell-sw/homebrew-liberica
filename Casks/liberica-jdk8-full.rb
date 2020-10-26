cask 'liberica-jdk8-full' do
  version '1.8.0,272'
  sha256 'b924936d3f5e07ebbd81cf969ae905bcf75b7244009f6de362a5cc2e6874d202'

  url "https://download.bell-sw.com/java/8u272%2B10/bellsoft-jdk8u272%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JDK 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jdk8u272+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end
