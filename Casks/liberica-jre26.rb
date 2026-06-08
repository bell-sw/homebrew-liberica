cask 'liberica-jre26' do
	desc "100% open-source Java implementation"
	version '26.0.1,10'

	if Hardware::CPU.intel?
		sha256 '488579b8bf1bee915ee1cb346c5f5803aab917c6749d2c2cf4c661de0dddfb91'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jre26.0.1%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre26.0.1+10-macos-amd64.pkg'
	else
		sha256 '264fe14cc7add7cee2017ab20564e2aa5feb634c49c1b5faa1d0962d418116ea'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jre26.0.1%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre26.0.1+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre26'

end

