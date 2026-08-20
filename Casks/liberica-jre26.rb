cask 'liberica-jre26' do
	desc "100% open-source Java implementation"
	version '26.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 '40bffed7092cf19f7eb118d14fec97d501e2a202cfe7c13a09591ace5ac57891'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jre26.0.2.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre26.0.2.1+1-macos-amd64.pkg'
	else
		sha256 'b7aba935cc570a57c15e1980b0d4f7aa9cf0af61a749e112013b97f2d2b25893'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jre26.0.2.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre26.0.2.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre26'

end

