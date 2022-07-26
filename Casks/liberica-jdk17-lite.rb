cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.4,8'

	if Hardware::CPU.intel?
		sha256 '48bff0efe28a8d15401d7f156401c9f1b84f6fc37f860e101720571894a1678d'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jdk17.0.4%2B8-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.4+8-macos-amd64-lite.pkg'
	else
		sha256 'e8a0ba7b9264b66c9a041421225975563737b91b10e67eeec0208ead84ea0e65'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jdk17.0.4%2B8-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.4+8-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

