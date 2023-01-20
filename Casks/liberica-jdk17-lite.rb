cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.6,10'

	if Hardware::CPU.intel?
		sha256 'bf3bdd45d672ad69907359a5a91efde4ecd7571cf66415bae8162fe35193db55'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.6+10-macos-amd64-lite.pkg'
	else
		sha256 'ddff33d9a180c5c9e3c60280c4995c17de9f3059de853996cab73bd8b0bb7f48'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jdk17.0.6%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.6+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

