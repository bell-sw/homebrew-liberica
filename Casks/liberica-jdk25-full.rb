cask 'liberica-jdk25-full' do
	desc "100% open-source Java implementation"
	version '25.0.1,11'

	if Hardware::CPU.intel?
		sha256 '8c2b2dffc9fb8e4cd2e0169f71b6920e2f66fc8a58f2b3afaa0c522d498a2e5b'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jdk25.0.1%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk25.0.1+11-macos-amd64-full.pkg'
	else
		sha256 '07448a24945bd01355dbdeb50a86c85fca499bda83258bdb072618d9452c8e98'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jdk25.0.1%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk25.0.1+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-full'

end

