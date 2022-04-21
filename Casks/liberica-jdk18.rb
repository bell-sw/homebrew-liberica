cask 'liberica-jdk18' do
	desc "100% open-source Java implementation"
	version '18.0.1,12'

	if Hardware::CPU.intel?
		sha256 'e4ce6ea99cfc23486f9360bdd58ad691f924bbc97ae06518793d8a72446bb36f'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk18.0.1+12-macos-amd64.pkg'
	else
		sha256 'd1ded7d33396785776ce50c818e71945a8e87b29031a68f64b26bedc4f586eb3'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk18.0.1+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18'

end

