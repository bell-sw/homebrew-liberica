cask 'liberica-jdk18-lite' do
	desc "100% open-source Java implementation"
	version '18.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 '5f98e00d9d85473f4c7e1c6592a409793c1c031ef90753953ef0e77d8a0e5626'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk18.0.2.1+1-macos-amd64-lite.pkg'
	else
		sha256 'e2502631b7bc09583273ba9ad239c460d25e81cf108908c46e6babcad50ecc6c'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk18.0.2.1+1-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-lite'

end

