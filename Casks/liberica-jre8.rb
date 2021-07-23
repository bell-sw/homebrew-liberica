cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,302'

	if Hardware::CPU.intel?
		sha256 'dc69ee68abba7bd9a238533a871316a56448b5d1c337c5f0c0b6c2cfd08fea1e'

		url "https://download.bell-sw.com/java/8u302%2B8/bellsoft-jre8u302%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u302+8-macos-amd64.pkg'
	else
		sha256 'dae090c2ec5c422bd462cdfd247821cbe3576fb6b6122c7e0abca0fe2479d22c'

		url "https://download.bell-sw.com/java/8u302%2B8/bellsoft-jre8u302%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u302+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

