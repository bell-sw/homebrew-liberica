cask 'liberica-jdk25-lite' do
	desc "100% open-source Java implementation"
	version '25.0.5.1,5'

	if Hardware::CPU.intel?
		sha256 'e9ecd3a1b6709dec2245d450650d1744ff199164b008c74cd536a4dd8e1aa82f'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jdk25.0.5.1%2B5-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.5.1+5-macos-amd64-lite.pkg'
	else
		sha256 'd7274397ff2f70ebab0b03983784607b36461ee4a04b02a7959cd2a3ebcc870a'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jdk25.0.5.1%2B5-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.5.1+5-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-lite'

end

