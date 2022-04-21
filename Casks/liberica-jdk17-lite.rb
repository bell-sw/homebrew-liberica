cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.3,7'

	if Hardware::CPU.intel?
		sha256 '61b2c5a3a6755e8cfb192ddab69e043ccb2f4de1b71936b6dcd3f0979a2fdae3'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.3+7-macos-amd64-lite.pkg'
	else
		sha256 '105f333cfb572e47b7fd5ebcccacafd91016735ceaa611fd9443a05e0e31dee9'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.3+7-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

