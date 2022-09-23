cask 'liberica-jdk19-full' do
	desc "100% open-source Java implementation"
	version '19,37'

	if Hardware::CPU.intel?
		sha256 'c80ae6f691ebde9b3b3a043106cddf22528b7088b992e9ed738b165e39ae24fc'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jdk19%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk19+37-macos-amd64-full.pkg'
	else
		sha256 'f2978922c5ec27539149c710fc71494c461f9d580afa76bc43d56538a79db9b3'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jdk19%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk19+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk19-full'

end

