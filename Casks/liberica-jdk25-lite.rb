cask 'liberica-jdk25-lite' do
	desc "100% open-source Java implementation"
	version '25.0.3,11'

	if Hardware::CPU.intel?
		sha256 'c346573b186c78f492ea370f0e956d67d825d9185fac586edfdccfe789cfcab6'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jdk25.0.3%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.3+11-macos-amd64-lite.pkg'
	else
		sha256 'bdddc30dc5d772d481c880876301f9a9e9fd1d7418796ca655ed5766e4a4949d'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jdk25.0.3%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.3+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-lite'

end

