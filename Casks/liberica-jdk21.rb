cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.12,10'

	if Hardware::CPU.intel?
		sha256 'fb70f5f7732a66a7f11c24defd601f1a7e17b7d17ad999b9c55b9d06c4517b17'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jdk21.0.12%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.12+10-macos-amd64.pkg'
	else
		sha256 '5e436dcc1d923ac64b45273c974855a89239914d00764da7edab29bef99b5f98'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jdk21.0.12%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.12+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

