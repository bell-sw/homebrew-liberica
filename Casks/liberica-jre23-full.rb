cask 'liberica-jre23-full' do
	desc "100% open-source Java implementation"
	version '23,38'

	if Hardware::CPU.intel?
		sha256 '2f9429017b2c491174e9ee870e3a099cfb281c780180c5dfbccf8117ede46e64'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jre23%2B38-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre23+38-macos-amd64-full.pkg'
	else
		sha256 '38f30619ac54eeb522c12e8e3100670d620b2f425fbe345c4b67ad741728b01a'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jre23%2B38-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre23+38-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre23-full'

end

