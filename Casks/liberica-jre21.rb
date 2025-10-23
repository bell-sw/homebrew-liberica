cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.9,11'

	if Hardware::CPU.intel?
		sha256 '6ac9c1076483b4317d474327d057204122ad9cc1b30663771174055c2116a7cf'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jre21.0.9%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.9+11-macos-amd64.pkg'
	else
		sha256 '57932ae523ba7f083c430df48e0f0f7f77cea37c1faceaa0641091bf959f88c2'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jre21.0.9%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.9+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

