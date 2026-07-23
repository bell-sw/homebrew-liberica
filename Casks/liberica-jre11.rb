cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.32,11'

	if Hardware::CPU.intel?
		sha256 '6bb9729294fb10b01880630bc414ae2d3a1ef02fbbd700a4d00c96b50a37cc85'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jre11.0.32%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.32+11-macos-amd64.pkg'
	else
		sha256 '51ebc679eb2e216ae637ec8f6aff01deb28e1f3579adaeb5eadbe7f473d52d9d'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jre11.0.32%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.32+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

