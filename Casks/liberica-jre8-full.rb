cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,302'

	if Hardware::CPU.intel?
		sha256 'b136fdfcb8234231dbcc8df2ecc2783192bb5c128e114ddfa8bb8ebe77adb27a'

		url "https://download.bell-sw.com/java/8u302%2B8/bellsoft-jre8u302%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u302+8-macos-amd64-full.pkg'
	else
		sha256 'adcd0a9ef34f0a552dc6596c0ff36f4988c5d4181b34c947d484ea931b1dfe68'

		url "https://download.bell-sw.com/java/8u302%2B8/bellsoft-jre8u302%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u302+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

