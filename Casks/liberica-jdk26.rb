cask 'liberica-jdk26' do
	desc "100% open-source Java implementation"
	version '26.0.2,13'

	if Hardware::CPU.intel?
		sha256 'c85652b7553f9c1ff65529db9bdad3b6413a97cfc5777fa7e761281b7cfa0e94'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jdk26.0.2%2B13-macos-amd64.pkg"
  		pkg 'bellsoft-jdk26.0.2+13-macos-amd64.pkg'
	else
		sha256 'dcc1cef8cdeae29dd5f980e938d2a29b295fe1e54a9d3e325ccc8ea19ee67e17'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jdk26.0.2%2B13-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk26.0.2+13-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk26'

end

