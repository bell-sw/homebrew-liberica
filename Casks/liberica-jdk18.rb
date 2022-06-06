cask 'liberica-jdk18' do
	desc "100% open-source Java implementation"
	version '18.0.1.1,2'

	if Hardware::CPU.intel?
		sha256 '876c99290b71e1d3ca0710eab81ef668244dfc22cbe11efa49e6e719e6526695'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jdk18.0.1.1%2B2-macos-amd64.pkg"
  		pkg 'bellsoft-jdk18.0.1.1+2-macos-amd64.pkg'
	else
		sha256 '7708a9ae55813674416aa5cd3b1b4d20089ff4b5329c4af5b5dc3335fe4dae68'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jdk18.0.1.1%2B2-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk18.0.1.1+2-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18'

end

