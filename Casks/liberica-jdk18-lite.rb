cask 'liberica-jdk18-lite' do
	desc "100% open-source Java implementation"
	version '18.0.1,12'

	if Hardware::CPU.intel?
		sha256 'eff0be7198972652d23294fb76c48ba9642838b78d5085f91c3012dc54051e83'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk18.0.1+12-macos-amd64-lite.pkg'
	else
		sha256 '9f19fdb62b10a8443b35c28ce5528ca4b1287ec0e104d199f66396087fc5a0ce'

		url "https://download.bell-sw.com/java/18.0.1%2B12/bellsoft-jdk18.0.1%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk18.0.1+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-lite'

end

