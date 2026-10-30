cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.21.0.3,5'

	if Hardware::CPU.intel?
		sha256 '9b1b3557e8f8ac77149159c0895a53456e7215c03d468ef761775827be448995'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jre17.0.21.0.3%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.21.0.3+5-macos-amd64-full.pkg'
	else
		sha256 '29cb794628d92e696a65051704fcafccaa5da9196733dec0005879d2a34638c8'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jre17.0.21.0.3%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.21.0.3+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

