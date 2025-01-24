cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,442'

	if Hardware::CPU.intel?
		sha256 'c4a7b867974d50ef0e71601a95fa3dfd47429cfba4d44dc1ea3fc8df18022905'

		url "https://download.bell-sw.com/java/8u442%2B7/bellsoft-jre8u442%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u442+7-macos-amd64.pkg'
	else
		sha256 '29b71dc5f9378fcb65fd623feb5ffeaed9c1cfb55e2663a771622b2f4bf4202f'

		url "https://download.bell-sw.com/java/8u442%2B7/bellsoft-jre8u442%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u442+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

