cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.15,10'

	if Hardware::CPU.intel?
		sha256 'd45ad87120fbdd9629cbe1e87e3756c85a815583090e1153486075f9ebd2c93e'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jdk11.0.15%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.15+10-macos-amd64-lite.pkg'
	else
		sha256 '11b4b3f13a18063677505cfd9696777a8834638222bda28d6844847eea997301'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jdk11.0.15%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.15+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

