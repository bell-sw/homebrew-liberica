cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.15,10'

	if Hardware::CPU.intel?
		sha256 'c4d057e24afe555cd2e10f343cf9bf5b7e578639efd38a671deba3a67cdbcb69'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jre11.0.15%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.15+10-macos-amd64-full.pkg'
	else
		sha256 '43faf0a425a6882d35a3783d85b0005f258ddb372dcf8cf29631876f0299d5dd'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jre11.0.15%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.15+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

