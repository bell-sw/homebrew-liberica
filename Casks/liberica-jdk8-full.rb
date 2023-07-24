cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,382'

	if Hardware::CPU.intel?
		sha256 '0c89bdbd73957f454137f4cf5bde91d51d0ba77762902dcf0d2d35ede59adb05'

		url "https://download.bell-sw.com/java/8u382%2B6/bellsoft-jdk8u382%2B6-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u382+6-macos-amd64-full.pkg'
	else
		sha256 '05e56a3a868e019cf325204867b9b577b0b91439ef64e9f21e82751197bdad29'

		url "https://download.bell-sw.com/java/8u382%2B6/bellsoft-jdk8u382%2B6-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u382+6-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

