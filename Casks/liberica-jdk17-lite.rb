cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.6,10'

	if Hardware::CPU.intel?
		sha256 'bf3bdd45d672ad69907359a5a91efde4ecd7571cf66415bae8162fe35193db55'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.6+10-macos-amd64-lite.pkg'
	else
		sha256 '8956df9514b21577b8783a9ce634041f0087ea1890901802a15434db34c8ea35'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.6+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

