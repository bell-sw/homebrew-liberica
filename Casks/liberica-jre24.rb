cask 'liberica-jre24' do
	desc "100% open-source Java implementation"
	version '24,37'

	if Hardware::CPU.intel?
		sha256 'e1f1333e8a0da2d1cc8ea52963902010d058c9ba867ca5213be280951f82ae9e'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jre24%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jre24+37-macos-amd64.pkg'
	else
		sha256 '053a40ff319c44b1d98f9d46912b67d19de549b129d45755d34dfb4c770b6444'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jre24%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jre24+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre24'

end

