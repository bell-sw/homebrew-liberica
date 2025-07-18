cask 'liberica-jdk24' do
	desc "100% open-source Java implementation"
	version '24.0.2,12'

	if Hardware::CPU.intel?
		sha256 '7772bf07017901fb82e225c7444a72a50e157af12ad82cbf54f7ac8e4c87b8b0'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jdk24.0.2%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk24.0.2+12-macos-amd64.pkg'
	else
		sha256 'affc96211dbdb79abfda2615321d0e0cdb8a9670587d1263d0c2bc6cd0f4a6bc'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jdk24.0.2%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk24.0.2+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk24'

end

