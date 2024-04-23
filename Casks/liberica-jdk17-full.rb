cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.11,10'

	if Hardware::CPU.intel?
		sha256 'e74c97876da60505ea4682c1a7a7c4bd4a5d2318ceb3d01b7d98f188ad8597a3'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jdk17.0.11%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.11+10-macos-amd64-full.pkg'
	else
		sha256 '58567b1506aaf34fe58de70d34093d8820fbf7ac2bbdb17f51ab895a093f7b52'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jdk17.0.11%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.11+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

