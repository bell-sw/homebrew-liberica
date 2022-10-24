cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.5,8'

	if Hardware::CPU.intel?
		sha256 'a65f14c18ebdf6f5f625bff732de78b4f13413008eceb4c9cd6ed777b37ccb92'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jdk17.0.5%2B8-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.5+8-macos-amd64-lite.pkg'
	else
		sha256 'f7d716bda3ce2a0b5ad0afac2b16230ee5be253f31e775570aa47744e5777c79'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jdk17.0.5%2B8-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.5+8-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

