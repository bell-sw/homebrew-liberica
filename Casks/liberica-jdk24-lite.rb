cask 'liberica-jdk24-lite' do
	desc "100% open-source Java implementation"
	version '24.0.2,12'

	if Hardware::CPU.intel?
		sha256 '207aef283dd7c1e568c13601992526a44ea0fa1277a53b63ea4c04a151aa6e77'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jdk24.0.2%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk24.0.2+12-macos-amd64-lite.pkg'
	else
		sha256 '5e194d4ef9f1c8ce0433ef0747ee67403acb876768f1475aa401010efd18c288'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jdk24.0.2%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk24.0.2+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk24-lite'

end

