cask 'liberica-jdk25-lite' do
	desc "100% open-source Java implementation"
	version '25.0.4,9'

	if Hardware::CPU.intel?
		sha256 'e8d41c25472c21d1359fb514171c463fd61a49713e22c3755a5ac2f966eff1da'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jdk25.0.4%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.4+9-macos-amd64-lite.pkg'
	else
		sha256 'e994d224cda318a30f35498660cb975b7f6ca328d44fa50ed29d5ac545264019'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jdk25.0.4%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.4+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-lite'

end

