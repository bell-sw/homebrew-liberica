cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,382'

	if Hardware::CPU.intel?
		sha256 '018303a19a44bf7dd88dbddc22efea04da1c236b921bbb0e069c29c0541a1522'

		url "https://download.bell-sw.com/java/8u382%2B6/bellsoft-jre8u382%2B6-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u382+6-macos-amd64.pkg'
	else
		sha256 '06ab08b610d34f4f38ba362f877de3bea2b4a54103b408da5f644edadbbf1b77'

		url "https://download.bell-sw.com/java/8u382%2B6/bellsoft-jre8u382%2B6-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u382+6-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

