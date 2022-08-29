cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,345'

	if Hardware::CPU.intel?
		sha256 '7b1d5b917d8fe2e1129fe0d72e8c5a5fa7a52628f591966757d69f6088da4b7c'

		url "https://download.bell-sw.com/java/8u345%2B1/bellsoft-jre8u345%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u345+1-macos-amd64.pkg'
	else
		sha256 '42e837d99e32356cd6cc332ecd468ad1e4e6bdb03e6ce1364027709718cf15be'

		url "https://download.bell-sw.com/java/8u345%2B1/bellsoft-jre8u345%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u345+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

