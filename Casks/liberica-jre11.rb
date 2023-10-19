cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.21,10'

	if Hardware::CPU.intel?
		sha256 'd0a7218bea1afc5d991f22a49308c1cdfc28736ad1b1256f6bcb8edd18c28ed8'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jre11.0.21%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.21+10-macos-amd64.pkg'
	else
		sha256 'a0aa9fb2922e979093d727e3784f4d1be3ddb397628636366fc4b1a508d4245b'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jre11.0.21%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.21+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

