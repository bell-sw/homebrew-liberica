cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.1,12'

	if Hardware::CPU.intel?
		sha256 '4e9f0f5f279438a172610fac760208f704ab3375bbe58e221d100ade1e9bcbcc'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jdk17.0.1%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.1+12-macos-amd64-lite.pkg'
	else
		sha256 'ffa682ea5049442427d3719d1905be9b5beecc2c0968d25d8f4d7e403a2c2c96'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jdk17.0.1%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.1+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

