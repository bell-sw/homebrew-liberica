cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,472'

	if Hardware::CPU.intel?
		sha256 'd777792ba3f2ec88e43fce2ccd08e989ae90a14974fe05a4894cc577ba005dc7'

		url "https://download.bell-sw.com/java/8u472%2B9/bellsoft-jdk8u472%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u472+9-macos-amd64.pkg'
	else
		sha256 '31acb684268ab3499eb1950efa6e00f11fbf5457001e62a4faf0b5603f930202'

		url "https://download.bell-sw.com/java/8u472%2B9/bellsoft-jdk8u472%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u472+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

