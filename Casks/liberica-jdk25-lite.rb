cask 'liberica-jdk25-lite' do
	desc "100% open-source Java implementation"
	version '25.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 'd82f6ab88430e0f4f8e58f06b210e471b1c9c4c36d5664580a81533f30789ad7'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jdk25.0.4.1%2B1-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.4.1+1-macos-amd64-lite.pkg'
	else
		sha256 '2d7ea9f01976c9b2dcc6b7289e51e277c5fb8fd53c74f4de557f82d5cea94ecd'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jdk25.0.4.1%2B1-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.4.1+1-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-lite'

end

