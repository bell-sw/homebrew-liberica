cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.25,11'

	if Hardware::CPU.intel?
		sha256 '061a4d4758e878aaf80d2413b071f4422ecc74ec441d3349b9977a817db1d392'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jdk11.0.25%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.25+11-macos-amd64-full.pkg'
	else
		sha256 'd8dc79435a2f9de2ab66ae71750a2d0a3d35d4d04c43304948c67b15880a84f7'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jdk11.0.25%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.25+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

