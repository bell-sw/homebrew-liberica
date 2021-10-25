cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.1,12'

	if Hardware::CPU.intel?
		sha256 '95a962c317d9e8d2627ab3aac10af073c00293801dc14c135d3ff1ddca11bf5d'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jre17.0.1%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.1+12-macos-amd64.pkg'
	else
		sha256 'c264f798ec6aa322d8e64e9a41fd3a0e4559363c5d0451ea1b8b0e6e697602c2'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jre17.0.1%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.1+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

