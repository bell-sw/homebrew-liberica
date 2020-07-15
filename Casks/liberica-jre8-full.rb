cask 'liberica-jre8-full' do
  version '1.8.0,262'
  sha256 '4864da72eee0feb53caca07cc4a6fb4a1063a876117a226bb2910b515afd9100'

  url "https://download.bell-sw.com/java/8u262%2B10/bellsoft-jre8u262%2B10-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u262+10-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end
