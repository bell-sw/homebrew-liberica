cask 'liberica-jre24' do
	desc "100% open-source Java implementation"
	version '24.0.1,11'

	if Hardware::CPU.intel?
		sha256 'a17eacb2408f99717dcfc67ed074f62a04c3b4914b863e6fd32cb4e5c9575e07'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jre24.0.1%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre24.0.1+11-macos-amd64.pkg'
	else
		sha256 '2c5a5fd7cd4064865ab92fe4d0282b832fa035e0f4d8c4c83202ec16162aed56'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jre24.0.1%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre24.0.1+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre24'

end

