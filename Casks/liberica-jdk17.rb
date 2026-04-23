cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.19,11'

	if Hardware::CPU.intel?
		sha256 '38b48907d8de04b4cd0bdb58476b4fcea4dfcac11f4d6b2790f2b75fe65b1eb3'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jdk17.0.19%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.19+11-macos-amd64.pkg'
	else
		sha256 'd1ba526ee46276a6741b12c62e7bec0b65115ad014d3d053dd687adda1b02ee2'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jdk17.0.19%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.19+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

