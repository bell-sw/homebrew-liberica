cask 'liberica-jre18' do
	desc "100% open-source Java implementation"
	version '18.0.1,12'

	if Hardware::CPU.intel?
		sha256 '774760002434af1d159b56488e1ae34e95cbf93cedbb7cdeecd77125ec62f99d'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jre18.0.1%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre18.0.1+12-macos-amd64.pkg'
	else
		sha256 '8541476df8ca85d0c5c1af2b1506591477e3df952c2b840f0698554246752b1b'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jre18.0.1%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre18.0.1+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18'

end

