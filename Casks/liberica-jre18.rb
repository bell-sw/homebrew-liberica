cask 'liberica-jre18' do
	desc "100% open-source Java implementation"
	version '18.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 'cc0dfcd2be57175743c7854f92e91a5b546651a2d246a72dfea5831b42760e20'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jre18.0.2.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre18.0.2.1+1-macos-amd64.pkg'
	else
		sha256 '691fcd68ef58dfe055ed5aa435aa79eee51e46cece5cc74ab41bfbf61a88ee63'

		url "https://download.bell-sw.com/java/18.0.2.1%2B1/bellsoft-jre18.0.2.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre18.0.2.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18'

end

