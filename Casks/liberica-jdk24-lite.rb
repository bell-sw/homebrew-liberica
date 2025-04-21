cask 'liberica-jdk24-lite' do
	desc "100% open-source Java implementation"
	version '24.0.1,11'

	if Hardware::CPU.intel?
		sha256 '9be5099cd6f46d2e43b1fb088dd0aacfd8731ab92f44054e4102cd78b45bdaf4'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jdk24.0.1%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk24.0.1+11-macos-amd64-lite.pkg'
	else
		sha256 'c4c3c44dcf23e429e6b508d876addb7f0a002f6dbcd1ec1106abf410e9d1729f'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jdk24.0.1%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk24.0.1+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk24-lite'

end

