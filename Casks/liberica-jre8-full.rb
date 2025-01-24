cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,442'

	if Hardware::CPU.intel?
		sha256 '59856ed13c5a84d118197147682f7dde399b49a0155fb0292e754a6535dec728'

		url "https://download.bell-sw.com/java/8u442%2B7/bellsoft-jre8u442%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u442+7-macos-amd64-full.pkg'
	else
		sha256 'f7c51d88acc75dfec8c355ec1183ad0dee13e21b2d2cbbdcb6c2e126120cec71'

		url "https://download.bell-sw.com/java/8u442%2B7/bellsoft-jre8u442%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u442+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

