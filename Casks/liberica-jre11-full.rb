cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.23,10'

	if Hardware::CPU.intel?
		sha256 '706ed6cd19789e9b0954f52025b3978302c0b51619e9bd1396440c16c23fae84'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jre11.0.23%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.23+10-macos-amd64-full.pkg'
	else
		sha256 '97dbea6f3c458c5afce39f2e772a0c297886983a85157a842cfe5ec583b5f8f6'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jre11.0.23%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.23+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

