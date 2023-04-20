cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.7,7'

	if Hardware::CPU.intel?
		sha256 '6f130a3ebafd5fa4afea1b453f5022a7cbff309690848d473a5f724c85ce7a65'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.7+7-macos-amd64-lite.pkg'
	else
		sha256 'ce1be882f23d7ef637603d6dd80dfc4419a7c28d8348e092dcee1d5a4acbc194'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.7+7-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

