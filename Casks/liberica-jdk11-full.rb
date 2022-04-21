cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.15,10'

	if Hardware::CPU.intel?
		sha256 '60fee3506d5a56ba5306c5930c1656068fbaa60d3ed690b3a66911681fe65502'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jdk11.0.15%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.15+10-macos-amd64-full.pkg'
	else
		sha256 'dc9276b5f3781cbedbba0152935c8fbc39ed2a088954ed1c69ec881be954eaa7'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jdk11.0.15%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.15+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

