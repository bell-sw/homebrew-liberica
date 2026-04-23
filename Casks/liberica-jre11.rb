cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.31,11'

	if Hardware::CPU.intel?
		sha256 '62336dacb445c0eda33a8c0534cfc204dee490c40fb071d99e6df58292bf1ddc'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jre11.0.31%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.31+11-macos-amd64.pkg'
	else
		sha256 'c0c536c056ac3e491f70905589c58d28cf770964e795305e1c9e33f2de93decb'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jre11.0.31%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.31+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

