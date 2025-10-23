cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.9,11'

	if Hardware::CPU.intel?
		sha256 '66c4af978f5755c21c3e18a2b7eca7981b5334eae901c66a7f72312276f9b6ba'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jre21.0.9%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.9+11-macos-amd64-full.pkg'
	else
		sha256 '4080282223a8e9e9f284c59bcf651fc8889d828b21dab9b7ab0058b2b024599d'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jre21.0.9%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.9+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

