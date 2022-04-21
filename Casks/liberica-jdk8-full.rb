cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,332'

	if Hardware::CPU.intel?
		sha256 '9aef0896a24813ac68cf72670a9bb9c671e9c0db5926fd4b030373c6b3d16dcb'

		url "https://download.bell-sw.com/java/8u332%2B9/bellsoft-jdk8u332%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u332+9-macos-amd64-full.pkg'
	else
		sha256 '9c9eb2ec1185390275c9aa6bd741f873aa887f8dc3c4ddf1ee28f2d0897f873c'

		url "https://download.bell-sw.com/java/8u332%2B9/bellsoft-jdk8u332%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u332+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

