cask 'liberica-jdk25-lite' do
	desc "100% open-source Java implementation"
	version '25.0.2,12'

	if Hardware::CPU.intel?
		sha256 '194892d9488ccdbfaaeb169041d2347855ab0530f1ff8786ba640e49d8207728'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jdk25.0.2%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.2+12-macos-amd64-lite.pkg'
	else
		sha256 '1518937181525f387aabce95a2f511ab4d5f1ce1c24bbdddba838bea770972cc'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jdk25.0.2%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.2+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-lite'

end

