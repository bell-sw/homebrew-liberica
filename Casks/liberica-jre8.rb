cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,502'

	if Hardware::CPU.intel?
		sha256 '3f9a534d82a8b0b5beb8dd58420af48a49b7ec305f49ad405d11e47721797505'

		url "https://download.bell-sw.com/java/8u502%2B9/bellsoft-jre8u502%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u502+9-macos-amd64.pkg'
	else
		sha256 '7e5746e454d31603b6a4278d94fe8b90670322778580233db859835acb507469'

		url "https://download.bell-sw.com/java/8u502%2B9/bellsoft-jre8u502%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u502+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

