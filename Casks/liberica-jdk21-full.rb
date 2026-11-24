cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.13.1,5'

	if Hardware::CPU.intel?
		sha256 '1ff544d7c195094d7e79a4da9ec040a6f1bf2314f68f59950aa23fffa30217da'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jdk21.0.13.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.13.1+5-macos-amd64-full.pkg'
	else
		sha256 '52f813d02273586b27c6de17e0f1e6725c4274c21d315ea4861c5cc097c55c74'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jdk21.0.13.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.13.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

