cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,504'

	if Hardware::CPU.intel?
		sha256 '0ee238eb1a75490ba457f3eca9f7fe6c5ead207b138fe63557476e7418b8fb03'

		url "https://download.bell-sw.com/java/8u504%2B1/bellsoft-jdk8u504%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u504+1-macos-amd64.pkg'
	else
		sha256 '7db9526656f8b4b68604cd437af77676e3f30fdc05e1dfb2781eed5f74a9e72e'

		url "https://download.bell-sw.com/java/8u504%2B1/bellsoft-jdk8u504%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u504+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

