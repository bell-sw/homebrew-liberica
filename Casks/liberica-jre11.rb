cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.22,12'

	if Hardware::CPU.intel?
		sha256 '975041184d50d69494187870a59568296f68ede2976dcdac2a4237a779edf3eb'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jre11.0.22%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.22+12-macos-amd64.pkg'
	else
		sha256 '735344b9a458f62c412c0877ee0272dc87202a30a3b30901e077f7dd18f42351'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jre11.0.22%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.22+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

