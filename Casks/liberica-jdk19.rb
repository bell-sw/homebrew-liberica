cask 'liberica-jdk19' do
	desc "100% open-source Java implementation"
	version '19.0.1,11'

	if Hardware::CPU.intel?
		sha256 '578e2b95aba2873882088b9d59dc3500065a95b7ed3a9eeeebc1770909ad16e4'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk19.0.1+11-macos-amd64.pkg'
	else
		sha256 'd3962afdd7044bca028ce3bf51df3b6a1c262655a8c70c66efd29b2e1151a37f'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk19.0.1+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk19'

end

