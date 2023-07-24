cask 'liberica-jdk20' do
	desc "100% open-source Java implementation"
	version '20.0.2,10'

	if Hardware::CPU.intel?
		sha256 'cda7d6f5ec5d5d2ab9c6571eca11472be7100e0870e2431df919d3dda619f19e'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jdk20.0.2%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk20.0.2+10-macos-amd64.pkg'
	else
		sha256 'c3b2fd05ffdd487ac3aead2af26e2312bad9bbcaa91c8b8c6dd0e020863cc9f6'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jdk20.0.2%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk20.0.2+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk20'

end

