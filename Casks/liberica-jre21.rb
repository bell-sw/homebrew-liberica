cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.5,11'

	if Hardware::CPU.intel?
		sha256 'd6235cd47e9e2db8cc88fc4a3d6ef4c42def520ea81388bbde58cf71a2f79a29'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jre21.0.5%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.5+11-macos-amd64.pkg'
	else
		sha256 '81719e34e692263d208e094a4ede351e64b6377c55ebf2e88023dbc7c97a501c'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jre21.0.5%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.5+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

