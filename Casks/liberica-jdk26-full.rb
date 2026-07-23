cask 'liberica-jdk26-full' do
	desc "100% open-source Java implementation"
	version '26.0.2,13'

	if Hardware::CPU.intel?
		sha256 '282ee72617652e0d8c5b23ae5ca2c3fc98c8924cb79526782e2fad79a0a9f940'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jdk26.0.2%2B13-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk26.0.2+13-macos-amd64-full.pkg'
	else
		sha256 'b0cef615109cb4df42eb4b267097039ea61163cb6f3ec7f283de8751f8f46cb1'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jdk26.0.2%2B13-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk26.0.2+13-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk26-full'

end

