cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.1,12'

	if Hardware::CPU.intel?
		sha256 '261d40e5ece2b48a6a5edc6299793d5fcafd6b3c324f556250a1a564839cdb86'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jre21.0.1%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.1+12-macos-amd64-full.pkg'
	else
		sha256 '1357e391d5e5838f5cb9fe2a998b56695661f653ccd0e4a4216e69b42a0de5c1'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jre21.0.1%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.1+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

