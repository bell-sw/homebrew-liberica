cask 'liberica-jre25-full' do
	desc "100% open-source Java implementation"
	version '25.0.2,12'

	if Hardware::CPU.intel?
		sha256 'a7ef3dd77feb10b88a42ef71004c99aa35039bb51e8bf77555a1b94e0b2e33be'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jre25.0.2%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre25.0.2+12-macos-amd64-full.pkg'
	else
		sha256 '235caad97e1bcf4d894486be29a68c51d612b2841d212c61cb953967b148438b'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jre25.0.2%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre25.0.2+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25-full'

end

