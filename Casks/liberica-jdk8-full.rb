cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,462'

	if Hardware::CPU.intel?
		sha256 '832afbf5863f657857e7d9c8c6283bf755f3a317dc79963b13c63f94d9c5076d'

		url "https://download.bell-sw.com/java/8u462%2B11/bellsoft-jdk8u462%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u462+11-macos-amd64-full.pkg'
	else
		sha256 '8e9897aca80c3f4fe3a2ff66f91e6053bf683df9786500a5d52d8ecbee4cdabb'

		url "https://download.bell-sw.com/java/8u462%2B11/bellsoft-jdk8u462%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u462+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

