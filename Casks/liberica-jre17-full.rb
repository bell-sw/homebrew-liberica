cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.20,10'

	if Hardware::CPU.intel?
		sha256 '7e5fcc10e0ae696fbef36d7ba19895d3352a10ff07b25cd664409e636d6caa2a'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jre17.0.20%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.20+10-macos-amd64-full.pkg'
	else
		sha256 'fd21b0fdca31bdd7b68fe78c030db984d64de251ea36352ea5b518c67ccbfd68'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jre17.0.20%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.20+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

