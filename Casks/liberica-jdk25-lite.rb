cask 'liberica-jdk25-lite' do
	desc "100% open-source Java implementation"
	version '25,37'

	if Hardware::CPU.intel?
		sha256 '8f91dc387207d8d52de5be7abd91a2a819910ec1ba83eb939ae1a5f7a323dd0d'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jdk25%2B37-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk25+37-macos-amd64-lite.pkg'
	else
		sha256 '4861a052f4398546d38e6dd09955678b1a3366b9141d228d81212c46c4dd6601'

		url "https://download.bell-sw.com/java/25%2B37/bellsoft-jdk25%2B37-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk25+37-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-lite'

end

