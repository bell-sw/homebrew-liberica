cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.9,11'

	if Hardware::CPU.intel?
		sha256 'd665e5749d3e20529157e6cad4e328652a6d3b3f86e3ea66ffdf1965e49193a2'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jdk17.0.9%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.9+11-macos-amd64.pkg'
	else
		sha256 'fef66a66f60a928e580daab584a6ec828148ba8f2a8d4ef36ac16517f8b81473'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jdk17.0.9%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.9+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

