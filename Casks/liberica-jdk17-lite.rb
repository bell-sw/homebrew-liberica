cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.16,12'

	if Hardware::CPU.intel?
		sha256 '4ad1d3e957e15c687de7c5a1ce9b84cd68f89fba840cd5549714bb55b7240e4b'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jdk17.0.16%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.16+12-macos-amd64-lite.pkg'
	else
		sha256 '96894284aa70d75cd6700adf2d2affe8386ae0126120cecd522591cab1196e8c'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jdk17.0.16%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.16+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

