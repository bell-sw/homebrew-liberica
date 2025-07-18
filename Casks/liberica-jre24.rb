cask 'liberica-jre24' do
	desc "100% open-source Java implementation"
	version '24.0.2,12'

	if Hardware::CPU.intel?
		sha256 '699d5e1171ec5a056761b66b68a3518de47fa3b7d9bad28bf6505a39234c1e74'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jre24.0.2%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre24.0.2+12-macos-amd64.pkg'
	else
		sha256 '1e4d45dbc688800397532bc9a180a75a63cf5ff58b2ac03b238efa7538b79870'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jre24.0.2%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre24.0.2+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre24'

end

