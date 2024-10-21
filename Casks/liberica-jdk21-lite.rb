cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.5,11'

	if Hardware::CPU.intel?
		sha256 'e647a25c81cf086c7bfe5f131ef98d5b65606d894134bc85499e10f4ae381777'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jdk21.0.5%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.5+11-macos-amd64-lite.pkg'
	else
		sha256 '81819528119d09e0eacbc7558de6e05634bf4455ebc407842dce997264fd3f92'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jdk21.0.5%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.5+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

