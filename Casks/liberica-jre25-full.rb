cask 'liberica-jre25-full' do
	desc "100% open-source Java implementation"
	version '25.0.1,11'

	if Hardware::CPU.intel?
		sha256 '2bfd9509dec2c220074323c646287f104c9f1f741597e57b185b34c9b9cb2373'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jre25.0.1%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre25.0.1+11-macos-amd64-full.pkg'
	else
		sha256 '43b8bf413447dce23997288c50fc847813fd499c4c0d3bf95d0242689aaa4d95'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jre25.0.1%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre25.0.1+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25-full'

end

