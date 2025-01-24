cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.14,10'

	if Hardware::CPU.intel?
		sha256 'de3435e10e0992043bbd24311a584704e9198b28cd06cc2df3d541fc233b3362'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jre17.0.14%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.14+10-macos-amd64-full.pkg'
	else
		sha256 '423e6a75f2520a9d524f9af454a547322070ded115c485cb9054b4d9475cfe76'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jre17.0.14%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.14+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

