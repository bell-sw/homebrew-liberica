cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.19,7'

	if Hardware::CPU.intel?
		sha256 '3f6d44efa9b3311ad827fd1595815d95a2a142725a1ec3891f735b048e3203fe'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jdk11.0.19%2B7-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.19+7-macos-amd64-lite.pkg'
	else
		sha256 '58b3a2786a83d71b42ee32f0c1f5d95dc4fac0da6cc088361a8cdaa0942ea411'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jdk11.0.19%2B7-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.19+7-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

