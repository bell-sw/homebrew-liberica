cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,322'

	if Hardware::CPU.intel?
		sha256 '44003007cd8cf35c36372e233ece206c4650b7aa13380fa2a6d900e35f4ba5c7'

		url "https://download.bell-sw.com/java/8u322%2B6/bellsoft-jre8u322%2B6-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u322+6-macos-amd64.pkg'
	else
		sha256 '1aeb74f36f974ae4e041cc5e5326ef0c69f3304edf690d19f453a4b524f989b9'

		url "https://download.bell-sw.com/java/8u322%2B6/bellsoft-jre8u322%2B6-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u322+6-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

