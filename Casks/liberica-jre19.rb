cask 'liberica-jre19' do
	desc "100% open-source Java implementation"
	version '19.0.2,9'

	if Hardware::CPU.intel?
		sha256 'e89b7529a53f9bdc608ecff62d2b67fb1d32c8382a7830d221b1ece7cbb90ff1'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jre19.0.2%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre19.0.2+9-macos-amd64.pkg'
	else
		sha256 'd6dc32a39a0841f9919d5029429968063011f8425da9ac9fa9c9fb7ac9f01396'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jre19.0.2%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre19.0.2+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre19'

end

