cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,333'

	if Hardware::CPU.intel?
		sha256 '09287d45841c94739df1539b4022f2241dfdf8be861d6102d3c9c42adb3a3f73'

		url "https://download.bell-sw.com/java/8u333%2B2/bellsoft-jdk8u333%2B2-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u333+2-macos-amd64.pkg'
	else
		sha256 'cc6723af5530e81a2c8c0e7d1848f5e627989577a47321d80679f7d0950bdd16'

		url "https://download.bell-sw.com/java/8u333%2B2/bellsoft-jdk8u333%2B2-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u333+2-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

