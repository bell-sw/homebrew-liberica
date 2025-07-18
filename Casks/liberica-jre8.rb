cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,462'

	if Hardware::CPU.intel?
		sha256 '76d2f2ee23e0575c3c8adad800b78250792fa2a4ec1c5802d30641204d9d0ee3'

		url "https://download.bell-sw.com/java/8u462%2B11/bellsoft-jre8u462%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u462+11-macos-amd64.pkg'
	else
		sha256 'e6dfab1b9c200972e675cd6722c8b844e2968ab3ce8d62a6dfea6c75e699198f'

		url "https://download.bell-sw.com/java/8u462%2B11/bellsoft-jre8u462%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u462+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

