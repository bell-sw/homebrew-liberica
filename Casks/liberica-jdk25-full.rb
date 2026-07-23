cask 'liberica-jdk25-full' do
	desc "100% open-source Java implementation"
	version '25.0.4,9'

	if Hardware::CPU.intel?
		sha256 '3124bf8cde75ab3c7c986aa07b40253b5a48ccf9f3952b89c5fe1052f49908d7'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jdk25.0.4%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk25.0.4+9-macos-amd64-full.pkg'
	else
		sha256 '23acd008c666d06b22394a47e03c6bd612ea7c6840029e3f4865570596f7b5ad'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jdk25.0.4%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk25.0.4+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-full'

end

