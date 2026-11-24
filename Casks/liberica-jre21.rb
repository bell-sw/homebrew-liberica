cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.13.1,5'

	if Hardware::CPU.intel?
		sha256 '2bd0a4bab627c31cea0c75b259a2b0aaf2e2f23dcd012395376083feefc6f661'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jre21.0.13.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.13.1+5-macos-amd64.pkg'
	else
		sha256 'f7423f42c37060cb5b6b22191daad807d4487cafebad7f0ae2f920e26ed0aa60'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jre21.0.13.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.13.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

