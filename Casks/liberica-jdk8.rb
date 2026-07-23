cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,502'

	if Hardware::CPU.intel?
		sha256 '966ce4efc54e4d8cec18b7107161d4ecea939c2f96f2071862d45723897c5fde'

		url "https://download.bell-sw.com/java/8u502%2B9/bellsoft-jdk8u502%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u502+9-macos-amd64.pkg'
	else
		sha256 'e055430d094c4b44fe11cb095b609f0e55b72ba306807ca73fb3ecb734759650'

		url "https://download.bell-sw.com/java/8u502%2B9/bellsoft-jdk8u502%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u502+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

