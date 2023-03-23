cask 'liberica-jdk20-lite' do
	desc "100% open-source Java implementation"
	version '20,37'

	if Hardware::CPU.intel?
		sha256 'bf78ca62aa65edb1f20108436b0f30f4d1b47ebd91ceefc6e52722f5d645a59a'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jdk20%2B37-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk20+37-macos-amd64-lite.pkg'
	else
		sha256 '7ce67c22b70dbfc98bdceed590ab068db745bceb199b852bf4689f949c2c9011'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jdk20%2B37-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk20+37-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk20-lite'

end

