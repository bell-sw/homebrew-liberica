cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.15,10'

	if Hardware::CPU.intel?
		sha256 '97b1e655def4029d3a55aa07ddda9039387afd9c53fd1da686470485361e97a0'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jdk17.0.15%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.15+10-macos-amd64-lite.pkg'
	else
		sha256 'c0a3edab24edc132a071c5df58169a343cc7d1113d9267f9e37669de46840beb'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jdk17.0.15%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.15+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

