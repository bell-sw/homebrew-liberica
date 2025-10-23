cask 'liberica-jdk25-lite' do
	desc "100% open-source Java implementation"
	version '25.0.1,11'

	if Hardware::CPU.intel?
		sha256 'e050a1d142bfa79669ce024e41b44ed1689fdf9702ac0955eb1b34fd8c50c84a'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jdk25.0.1%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.1+11-macos-amd64-lite.pkg'
	else
		sha256 '9b3a6e7668f6fea96e1af26237a3984c09988200ae41e6076fbbdec71486f0e8'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jdk25.0.1%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.1+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-lite'

end

