cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.32.1,1'

	if Hardware::CPU.intel?
		sha256 '5953bfc034ee2c08f899a19664d0cdd7bf8890f331ca266f99063ebb8f3f626e'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jdk11.0.32.1%2B1-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.32.1+1-macos-amd64-lite.pkg'
	else
		sha256 '257f940d141da2386b9cd5d51e0f4f78d7322143a9078a18aea69ea4a7936f7e'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jdk11.0.32.1%2B1-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.32.1+1-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

