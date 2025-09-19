cask 'liberica-jdk25' do
	desc "100% open-source Java implementation"
	version '25,37'

	if Hardware::CPU.intel?
		sha256 'f21d406e2b645c4ed175b4ab4449461c0798ed7be29839cd9ab7a0648c85cef7'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jdk25%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jdk25+37-macos-amd64.pkg'
	else
		sha256 '3dc42adf605b345dc9787eb5b1810bfd08f905431e54b15c4eb36518905363e9'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jdk25%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk25+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25'

end

