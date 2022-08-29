cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 '1cdeb70bcf30f2b748c909d91092826ad7b5232db82ee5813c3b471a110052be'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jre17.0.4.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.4.1+1-macos-amd64.pkg'
	else
		sha256 '460b5c85f24cfb1d07c4c0a6f3a386e3a9e1fdd9409dc45bb18d853eecd61758'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jre17.0.4.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.4.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

