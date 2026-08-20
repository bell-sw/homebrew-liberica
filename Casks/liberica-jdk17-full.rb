cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.20.1,1'

	if Hardware::CPU.intel?
		sha256 '71e12c143bf6b4bf8c6114d1dc88622dd8c114cc5ec8832e30bbc6fdc90ee2ad'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jdk17.0.20.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.20.1+1-macos-amd64-full.pkg'
	else
		sha256 '0cf11fc02509a89a6090f2e2895f0a82bcbc799b26494a67d9c2066c4f1f7735'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jdk17.0.20.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.20.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

