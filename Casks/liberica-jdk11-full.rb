cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.28,12'

	if Hardware::CPU.intel?
		sha256 '1f7ba0130c767fefae5fd56b8576d3ca87178f515d010261506a13646fdc18b0'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jdk11.0.28%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.28+12-macos-amd64-full.pkg'
	else
		sha256 '9fcd79c301c57d20b01985c5b8ce508576d21cf99505a159daa2da90922613a9'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jdk11.0.28%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.28+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

