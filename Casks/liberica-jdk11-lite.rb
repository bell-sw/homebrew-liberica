cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.27,9'

	if Hardware::CPU.intel?
		sha256 '0e354b8fecfc3b69d2ffdb9a4eddba64a2a3b099cc54756f27fd3d08fe3d101d'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jdk11.0.27%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.27+9-macos-amd64-lite.pkg'
	else
		sha256 'c8bb568c2a06643606c83c8dc7a4df46dc0e5fb3fc8bb92c65f0af09c87e0b3c'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jdk11.0.27%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.27+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

