cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.1,12'

	if Hardware::CPU.intel?
		sha256 '4bffa8f5f72b3bf0777c68588519d132971f5949bea709098b7575aae547ee3a'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jre21.0.1%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.1+12-macos-amd64.pkg'
	else
		sha256 'acab9b3c12605675c5d4ff97619f5342afea14eb5b85dd11c662d1525137a202'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jre21.0.1%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.1+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

