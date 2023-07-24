cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.8,7'

	if Hardware::CPU.intel?
		sha256 '0e145a943b70704b544913c1bb6caba9eeb223a312fb87e7f0bc6e365a8a5c4e'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jre17.0.8%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.8+7-macos-amd64.pkg'
	else
		sha256 '365c86ad1c7e4dca33a8165a3cdc5a1c7dd5859126b2f7c9d4cfe3c6f979290f'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jre17.0.8%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.8+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

