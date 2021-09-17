cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17,35'

	if Hardware::CPU.intel?
		sha256 '8baec4c246c6d7a6b59e0657f53381545405c90c8335e32b9a3f8e874e9c13df'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jdk17%2B35-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17+35-macos-amd64-lite.pkg'
	else
		sha256 '48b6b88e725e6942128edd24edbc4a4d9b7fa843271ef2aacec417cd429130a7'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jdk17%2B35-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17+35-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

