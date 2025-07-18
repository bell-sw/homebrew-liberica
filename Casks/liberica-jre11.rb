cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.28,12'

	if Hardware::CPU.intel?
		sha256 '932b8971274df827f16987f6ec2b5844d0213f7ac58779327634d5c4bbdb9b50'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jre11.0.28%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.28+12-macos-amd64.pkg'
	else
		sha256 '97c654744bf039b8f672897ae7b69d3b08162c01b3020a5d387188cf01c018df'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jre11.0.28%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.28+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

