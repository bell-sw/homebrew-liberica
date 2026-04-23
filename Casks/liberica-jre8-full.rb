cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,492'

	if Hardware::CPU.intel?
		sha256 '58810de7e2403b6bca6114f118347d9fdc6322a996ebd009699605c953275b98'

		url "https://download.bell-sw.com/java/8u492%2B9/bellsoft-jre8u492%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u492+9-macos-amd64-full.pkg'
	else
		sha256 '71b65788fe7577223f74f5a3cac8018dfb37112e752aa0b76a12836ffd0bac6b'

		url "https://download.bell-sw.com/java/8u492%2B9/bellsoft-jre8u492%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u492+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

