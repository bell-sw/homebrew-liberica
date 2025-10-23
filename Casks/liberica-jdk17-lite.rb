cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.17,11'

	if Hardware::CPU.intel?
		sha256 'ec9996d31f8baa8b99dbe7fd836d78ba9d66136d2b65ed272f6769b49dbd09e7'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jdk17.0.17%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.17+11-macos-amd64-lite.pkg'
	else
		sha256 'a114b096280ca87d515514e57b01c6795c21da827bfa4721db8a5a2c00e48428'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jdk17.0.17%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.17+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

