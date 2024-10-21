cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.5,11'

	if Hardware::CPU.intel?
		sha256 '7229bce78eb38882adc18dc586e4b8b317bcf44fd30726d31f41386cdcd1bedb'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jre21.0.5%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.5+11-macos-amd64-full.pkg'
	else
		sha256 'a617b81e87ea593a686690db8bbbc69a61989eec857db48faad80f242e95ab7f'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jre21.0.5%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.5+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

