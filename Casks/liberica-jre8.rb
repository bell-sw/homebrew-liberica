cask 'liberica-jre8' do
  version '1.8.0,262'
  sha256 'd3c3cb8a0e4090e640f031196eb5fe0d4b55e4ac7f0c1b80f5bd8850aea1ad79'

  url "https://download.bell-sw.com/java/8u262%2B10/bellsoft-jre8u262%2B10-macos-amd64.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u262+10-macos-amd64.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end
