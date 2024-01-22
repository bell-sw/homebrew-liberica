cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.22,12'

	if Hardware::CPU.intel?
		sha256 '8ce2152ddbbc80f489b0e271b040abbe7a3935784813e75010dad8de9f4236f0'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jre11.0.22%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.22+12-macos-amd64-full.pkg'
	else
		sha256 '4118db0d42b2ff1c06cbbc48ce63d654badd965fbd63a12058888a8a404419d2'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jre11.0.22%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.22+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

