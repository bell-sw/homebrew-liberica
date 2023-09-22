cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21,37'

	if Hardware::CPU.intel?
		sha256 '58f2af5c1dc9d0fdc1bf89cce9293949f199ad463ce8ee495287b870a1cc568d'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jdk21%2B37-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21+37-macos-amd64-lite.pkg'
	else
		sha256 '4b099aef2a49ffec7981831fccb1cee57f7ce7a7943d36fb44019afef1a3155e'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jdk21%2B37-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21+37-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

