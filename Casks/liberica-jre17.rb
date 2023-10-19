cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.9,11'

	if Hardware::CPU.intel?
		sha256 '9bc82692064104fe01e22181ed4ee1567a5d6897bc433dc887d03faec280e4e6'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jre17.0.9%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.9+11-macos-amd64.pkg'
	else
		sha256 '4ffec797133ccdb49978e4d74397cd6fd555406fab9b3ae6b8a99c944b63f5cd'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jre17.0.9%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.9+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

