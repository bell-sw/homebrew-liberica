cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.11,11'

	if Hardware::CPU.intel?
		sha256 '47d1ff011ea4cee685dcf148904b5a314c65d1c315f1ccf9c12d3c218ec9f2db'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jdk21.0.11%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.11+11-macos-amd64.pkg'
	else
		sha256 'c7a63004d758877768c46056ab34ade6324d23f8fb105a0860bcb13a1e7664b5'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jdk21.0.11%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.11+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

