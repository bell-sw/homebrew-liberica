cask 'liberica-jdk18-full' do
	desc "100% open-source Java implementation"
	version '18.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 '63c5a9446dcb309b4f54f86c7175aba54050801d13cc03f818b5cd4142995d7b'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk18.0.2.1+1-macos-amd64-full.pkg'
	else
		sha256 'd391e2c0598d67ea0a71dbc093c08eb3ac41b0856c56f0c4a5e8d44a08c9b59a'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jdk18.0.2.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk18.0.2.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-full'

end

