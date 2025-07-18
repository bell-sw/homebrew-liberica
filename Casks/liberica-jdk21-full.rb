cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.8,12'

	if Hardware::CPU.intel?
		sha256 'd065bc95aa03d4e234de056bb5060d6e82466f571e4752763f6e2622bb9cf569'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jdk21.0.8%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.8+12-macos-amd64-full.pkg'
	else
		sha256 '5ce83399185828c14fa5c4e9cf0cbc416105a67856230684eb7b4f74737cf7bd'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jdk21.0.8%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.8+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

