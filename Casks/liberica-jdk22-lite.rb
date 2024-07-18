cask 'liberica-jdk22-lite' do
	desc "100% open-source Java implementation"
	version '22.0.2,11'

	if Hardware::CPU.intel?
		sha256 '99e8f26cdc67746ca73500865dae932581d426dff2bd53f6c6840d220a39889d'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jdk22.0.2%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk22.0.2+11-macos-amd64-lite.pkg'
	else
		sha256 '77d24ec47c141c5f2dd62f3e76d546bf6d633b0fa9926b52a086c438ac55e98e'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jdk22.0.2%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk22.0.2+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk22-lite'

end

