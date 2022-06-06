cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,2'

	if Hardware::CPU.intel?
		sha256 '0757d7c7f9a7e9becca2df26fff0500bdcf0c2d63db5430853c3cb0ee12bdd9e'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jdk11.0.15.1%2B2-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+2-macos-amd64-full.pkg'
	else
		sha256 'cf5b1bfeb7e3981b6264018abfff788eaf9625fa259c99e8f271541d9dfa3fd9'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jdk11.0.15.1%2B2-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+2-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

