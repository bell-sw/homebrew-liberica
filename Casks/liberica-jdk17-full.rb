cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.8,7'

	if Hardware::CPU.intel?
		sha256 'a60fd999cbea908d0bd6fbf7f724b311f4e4d3eb81b29ccb3ee1434fd15d101b'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jdk17.0.8%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.8+7-macos-amd64-full.pkg'
	else
		sha256 '077e87e9389e2f0d684e1e7a437024f5abf98f8dc587cd3ecfa70dbc5d75ba6a'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jdk17.0.8%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.8+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

