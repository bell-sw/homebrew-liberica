cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.8,12'

	if Hardware::CPU.intel?
		sha256 '848305ff218c3505577520863001b6bfe8e762d5795d76258293f55e7f43c8da'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jre21.0.8%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.8+12-macos-amd64.pkg'
	else
		sha256 '831363322bc819394983cc5fdb1737a39f778d54616f81dc64c1cec5997d1fe1'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jre21.0.8%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.8+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

