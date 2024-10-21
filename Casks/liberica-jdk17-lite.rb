cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.13,12'

	if Hardware::CPU.intel?
		sha256 '5fd9ab8bf2635fed240b9f573e6c9c4c73317a63337cd3d0d30f12f4d393be8b'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jdk17.0.13%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.13+12-macos-amd64-lite.pkg'
	else
		sha256 '8e4c3b42d816cffcf1a288c8c5e7d4bdc9a9174dd5c8d5ed6fe03ef6dd71a68d'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jdk17.0.13%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.13+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

