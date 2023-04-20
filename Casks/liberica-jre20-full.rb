cask 'liberica-jre20-full' do
	desc "100% open-source Java implementation"
	version '20.0.1,10'

	if Hardware::CPU.intel?
		sha256 '89c5ad64226a0d122e0b0b8697da15b60bdc455dc80081b921a394dd5c89e8d5'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jre20.0.1%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre20.0.1+10-macos-amd64-full.pkg'
	else
		sha256 '952db8738488450abd65665c96e9ccf0c052d5326c636d1d685e99acdb57b67a'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jre20.0.1%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre20.0.1+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre20-full'

end

