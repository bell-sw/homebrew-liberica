cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.3,10'

	if Hardware::CPU.intel?
		sha256 '308599fd5b9d70e53fb7ca87a4d7b7dd6ef146507ad622546afbd964b94e09c2'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jdk21.0.3%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.3+10-macos-amd64-lite.pkg'
	else
		sha256 '44ed7b3d2b094da2a6827a1995cac15705db70980976777f14357d18a0364fed'

		url "https://download.bell-sw.com/java/21.0.3%2B10/bellsoft-jdk21.0.3%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.3+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

