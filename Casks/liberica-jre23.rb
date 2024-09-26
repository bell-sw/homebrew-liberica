cask 'liberica-jre23' do
	desc "100% open-source Java implementation"
	version '23,38'

	if Hardware::CPU.intel?
		sha256 'dabfe0469a5f8cb5b0f97aebbba306c21c36be1b98cdaca1fb26741bcb91e8ee'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jre23%2B38-macos-amd64.pkg"
  		pkg 'bellsoft-jre23+38-macos-amd64.pkg'
	else
		sha256 '3460726616d0b2ce2cbe7ff3033c23341fc873ffb001eb5cddaf6068597b8df5'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jre23%2B38-macos-aarch64.pkg"
  		pkg 'bellsoft-jre23+38-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre23'

end

