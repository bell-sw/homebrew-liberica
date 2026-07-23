cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.20,10'

	if Hardware::CPU.intel?
		sha256 'e7a9314e521005d04792a82b4785a952669d45fbca1f6a83fa242705a4faade2'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jdk17.0.20%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.20+10-macos-amd64-full.pkg'
	else
		sha256 '087b5a4b05c790662f13d3ac0ff217d1b99eb93b7fd4bee0f49966d0625a5d1a'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jdk17.0.20%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.20+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

