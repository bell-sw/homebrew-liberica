cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,492'

	if Hardware::CPU.intel?
		sha256 'be3326bad48bd9395b8e5a91a432f78d1d3b1f58a7b6049053fc3e7b223d8acb'

		url "https://download.bell-sw.com/java/8u492%2B9/bellsoft-jre8u492%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u492+9-macos-amd64.pkg'
	else
		sha256 '7e00e8fdc19072cd6a93fd40b0aa163682de803b44fab56ab04713e95c432077'

		url "https://download.bell-sw.com/java/8u492%2B9/bellsoft-jre8u492%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u492+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

