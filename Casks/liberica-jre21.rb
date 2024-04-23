cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.3,10'

	if Hardware::CPU.intel?
		sha256 '5f62f8d2bff1af07942ada44d2637b9471d4a213720c9006266a5b39429b3847'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jre21.0.3%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.3+10-macos-amd64.pkg'
	else
		sha256 '5797b42c4b416362e10db51e78304f18bae81897790e2ccab63945939a54e489'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jre21.0.3%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.3+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

