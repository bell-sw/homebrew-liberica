cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.13,8'

	if Hardware::CPU.intel?
		sha256 '4b42b951999bc7bee04d8eb5277350ccf3b6bdb3576f72cc6ca64b8c6a9f25e5'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jdk11.0.13%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.13+8-macos-amd64-full.pkg'
	else
		sha256 '8ee909c5788534ccf56882d51cff791da17c807606daf3848b6a14bf7eea3208'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jdk11.0.13%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.13+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

