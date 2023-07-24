cask 'liberica-jre20' do
	desc "100% open-source Java implementation"
	version '20.0.2,10'

	if Hardware::CPU.intel?
		sha256 'f20b09c1b4a9d53bdfd81f8e23c02121714f19d0e2c1f909dc653892dbc0e16d'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jre20.0.2%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre20.0.2+10-macos-amd64.pkg'
	else
		sha256 '32452dea5a3a0a20ace256eb341fcd52e443da535ba5ed74b1044d64863c7f7a'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jre20.0.2%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre20.0.2+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre20'

end

