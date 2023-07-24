cask 'liberica-jdk20-lite' do
	desc "100% open-source Java implementation"
	version '20.0.2,10'

	if Hardware::CPU.intel?
		sha256 '14b4fb84181db58dcacad7a5cc851b28a8a3e5e9b6dc878b37e982b2f4b62ef3'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jdk20.0.2%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk20.0.2+10-macos-amd64-lite.pkg'
	else
		sha256 'd6e9bd5e55b6cb8d2aa42e97189a45a9d9f6a8778bac446519ffc84b377fb897'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jdk20.0.2%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk20.0.2+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk20-lite'

end

