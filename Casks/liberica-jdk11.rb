cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.20,8'

	if Hardware::CPU.intel?
		sha256 '3159fad66890ea37e1d8cacf3d1b3e70221deb89395e28fb18be45844c030132'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jdk11.0.20%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.20+8-macos-amd64.pkg'
	else
		sha256 'a821781d172513c020f2f583f492eab8c6042931c52b7a695919e85679794e61'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jdk11.0.20%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.20+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

