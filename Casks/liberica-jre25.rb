cask 'liberica-jre25' do
	desc "100% open-source Java implementation"
	version '25,37'

	if Hardware::CPU.intel?
		sha256 '1b54f4d19495e7d230007b4c52efacf29d0a114e1bb812f1bf7cb1a1c04c1e71'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jre25%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jre25+37-macos-amd64.pkg'
	else
		sha256 'd1d1073c82cbde416ca69106e8ea11c2e963c6f427f5b5d1691cba9864ec6cec'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jre25%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jre25+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25'

end

