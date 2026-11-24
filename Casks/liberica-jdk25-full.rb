cask 'liberica-jdk25-full' do
	desc "100% open-source Java implementation"
	version '25.0.5.1,5'

	if Hardware::CPU.intel?
		sha256 '37699f5899642af4659f5042d9b1ccb94f7e7a3b1b4c6ddad41b5b2ea8793a3c'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jdk25.0.5.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk25.0.5.1+5-macos-amd64-full.pkg'
	else
		sha256 '5d42cb7666dc001b57b129eb5115d572823757a8498076f5490c2a9c03dc9760'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jdk25.0.5.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk25.0.5.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-full'

end

