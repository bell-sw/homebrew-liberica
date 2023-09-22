cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21,37'

	if Hardware::CPU.intel?
		sha256 '01e5c93162ea5e6aa9295cb15b7ef67db37f204dacf251d229a580d588de9b30'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jre21%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jre21+37-macos-amd64.pkg'
	else
		sha256 'c5efab0910f306daeed01f469c61a161b7b5908b5aca5a34cf85988f52447437'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jre21%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

