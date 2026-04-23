cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.31,11'

	if Hardware::CPU.intel?
		sha256 'cb089efbc36efe9cfee12429ed0b9b665ca39e804d4556a671ccb96a91999735'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jdk11.0.31%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.31+11-macos-amd64-lite.pkg'
	else
		sha256 'a3d3cc8f00091adcb057e06439e0123101eaadf7e018123b1cdab3100f73309d'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jdk11.0.31%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.31+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

