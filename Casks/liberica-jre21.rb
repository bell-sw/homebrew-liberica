cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.12.1,1'

	if Hardware::CPU.intel?
		sha256 'c9ad5076f8f19d4930a91e8d939c96f40451265d1f6184dd0c4e4d6f26d28f23'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jre21.0.12.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.12.1+1-macos-amd64.pkg'
	else
		sha256 '5cb10f9a5e99323abe209b4579ecb083f7060f9a7335adcea68352ac0a4664a3'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jre21.0.12.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.12.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

