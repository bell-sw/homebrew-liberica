cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.1,12'

	if Hardware::CPU.intel?
		sha256 '8236b2d6ead893bf6898d1507b9c6166e47c992be477ab695366be17e213543f'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jdk17.0.1%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.1+12-macos-amd64.pkg'
	else
		sha256 'bf24c0a18664040ab6f877f8ab3df57a6cbddf6989daceb0529fcbb8ff8f1e9f'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jdk17.0.1%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.1+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

