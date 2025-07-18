cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.16,12'

	if Hardware::CPU.intel?
		sha256 '5d5c14eb9fdd19f85fd47fad9f947e955ab20a6001b399f636e6ccba4580af11'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jre17.0.16%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.16+12-macos-amd64.pkg'
	else
		sha256 '9df110934a2fd547dabdb45203ea3923a56656d58ab1a4f5835f6eda1f0df499'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jre17.0.16%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.16+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

