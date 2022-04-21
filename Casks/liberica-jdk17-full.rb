cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.3,7'

	if Hardware::CPU.intel?
		sha256 '54cbaf5ebdf062cea19f49ec1c7ebcf07bf9b3c2222122e17308abc90ce77a1b'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.3+7-macos-amd64-full.pkg'
	else
		sha256 'b8397439bf05fa5c666aa767390968f6e631d2f0b8999976338c59a06caf522c'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.3+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

