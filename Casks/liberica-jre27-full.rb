cask 'liberica-jre27-full' do
	desc "100% open-source Java implementation"
	version '27,36'

	if Hardware::CPU.intel?
		sha256 'fe329c8b7a54e8fa1c9cd4b0a0d0bae554a4efcc01d74fea0887c9aa21169b7f'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jre27%2B36-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre27+36-macos-amd64-full.pkg'
	else
		sha256 '88d5ce3b1cf70f98eadeef99244592f584927250b63c06a2d0653523dae6e498'

		url "https://download.bell-sw.com/java/27%2B36/bellsoft-jre27%2B36-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre27+36-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre27-full'

end

