cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.2,9'

	if Hardware::CPU.intel?
		sha256 '4dde8ef22a30b36003846746fd31bf8b8ea9aefb265b3e97f438f2214d97f21e'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jdk17.0.2%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.2+9-macos-amd64-full.pkg'
	else
		sha256 '844896808de9f9d082717be45d8aac34093d3aebe783708c1054bfc292bcb878'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jdk17.0.2%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.2+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

