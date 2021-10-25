cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,312'

	if Hardware::CPU.intel?
		sha256 'fdd0ad4c5d444309aec315b5f1036a09e648e4da1c604d37a26f74bb04cc04fc'

		url "https://download.bell-sw.com/java/8u312%2B7/bellsoft-jre8u312%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u312+7-macos-amd64-full.pkg'
	else
		sha256 'b457e7ba3485e3e2ceb3d8b113de46be9167f942ea40ff901671141aede85799'

		url "https://download.bell-sw.com/java/8u312%2B7/bellsoft-jre8u312%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u312+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

