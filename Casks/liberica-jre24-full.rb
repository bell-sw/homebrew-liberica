cask 'liberica-jre24-full' do
	desc "100% open-source Java implementation"
	version '24.0.1,11'

	if Hardware::CPU.intel?
		sha256 '7635f71628a060944b6d5fc222c6ad3b4026b85d28485708a70357e9ab0b6054'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jre24.0.1%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre24.0.1+11-macos-amd64-full.pkg'
	else
		sha256 '1333fbef160fd25fa3da638ab14084c2af13b4dd3a6249d83daea586c6336b6d'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jre24.0.1%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre24.0.1+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre24-full'

end

