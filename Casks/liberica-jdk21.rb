cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.9,11'

	if Hardware::CPU.intel?
		sha256 '2c54ee8ccf61bba4038c8795d09bf76aa44137fadc747f9e115286d777a7fd23'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jdk21.0.9%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.9+11-macos-amd64.pkg'
	else
		sha256 'a19fd9643b26008d6c1ebd2f7a7d3c994e116501ffe4e64c86cb62e93753531a'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jdk21.0.9%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.9+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

