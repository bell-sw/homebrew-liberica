cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.16,8'

	if Hardware::CPU.intel?
		sha256 'bc7d25ca1d135e3a429da1ace879c6e5f5877ed2c8820f9ddac83d926116313d'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jdk11.0.16%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.16+8-macos-amd64-full.pkg'
	else
		sha256 '262c731be7f5d884ab28f821a422f466aa165c9344ec18da15bb0441caf8ccf0'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jdk11.0.16%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.16+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

