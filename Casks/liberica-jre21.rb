cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.10,10'

	if Hardware::CPU.intel?
		sha256 'b7bd26d55bedc7cf21125ac694cfdc885f4a65dadb08bb6132cf183e1fecc2c9'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jre21.0.10%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.10+10-macos-amd64.pkg'
	else
		sha256 '9e31208ff6fc749c9a2c490312f14b91b6b9e186f70bf865132d88905f58343a'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jre21.0.10%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.10+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

