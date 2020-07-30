cask 'liberica-jre8-full' do
  version '1.8.0,265'
  sha256 '26af30fc6fbc2a564969d91cc3cedd6353a97eab8032b37b2586d61aa74889a4'

  url "https://download.bell-sw.com/java/8u265%2B1/bellsoft-jre8u265%2B1-macos-amd64-full.pkg"
  name 'BellSoft Liberica JRE 8'
  homepage 'https://bell-sw.com'

  pkg 'bellsoft-jre8u265+1-macos-amd64-full.pkg'

  uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end
