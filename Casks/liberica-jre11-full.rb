cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.33.1,5'

	if Hardware::CPU.intel?
		sha256 '184e1feb334612ff893b11d568b986564f1660afa4b742706bfe1896a6847c2c'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jre11.0.33.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.33.1+5-macos-amd64-full.pkg'
	else
		sha256 '33e93e9e7d92d86d182457d1c625d002008bfa1e6175ac65bd40379eff5c43bd'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jre11.0.33.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.33.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

