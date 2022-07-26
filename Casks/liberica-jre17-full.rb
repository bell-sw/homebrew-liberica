cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.4,8'

	if Hardware::CPU.intel?
		sha256 '8c9a3d1e5cdc123a3052d4c174101f8e0e2ae4b275bb4f08fe9b9467c417a79d'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jre17.0.4%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.4+8-macos-amd64-full.pkg'
	else
		sha256 'ce62bc0b8a85b125c9578fa27e94062a2d65ab5251d3bd035872c716513038bc'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jre17.0.4%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.4+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

