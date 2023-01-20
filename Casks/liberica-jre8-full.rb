cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,362'

	if Hardware::CPU.intel?
		sha256 'fed772fdfdc8fcfedce289386f4abaf127d1ae21389234228be7f54694a2c455'

		url "https://download.bell-sw.com/java/8u362%2B9/bellsoft-jre8u362%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u362+9-macos-amd64-full.pkg'
	else
		sha256 '4025a4fe4042a1443e0c8fbbd0ca4773921076c84c792ea5a3fea2a7273801a4'

		url "https://download.bell-sw.com/java/8u362%2B9/bellsoft-jre8u362%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u362+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

