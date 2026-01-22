cask 'liberica-jdk25-full' do
	desc "100% open-source Java implementation"
	version '25.0.2,12'

	if Hardware::CPU.intel?
		sha256 'f7b134cd200debe7d9812d958e6bfca4226467d13fa735f094b90e304081756d'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jdk25.0.2%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk25.0.2+12-macos-amd64-full.pkg'
	else
		sha256 '367cc5d6562b39540bc622de45b248b78d03ce8f7d994de859f4f5198ddd1e3d'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jdk25.0.2%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk25.0.2+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-full'

end

