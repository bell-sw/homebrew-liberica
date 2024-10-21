cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,432'

	if Hardware::CPU.intel?
		sha256 'a6512e3b551c21119d71aea0a583f05827fe4c8b30c5d633705d9eab46849ccb'

		url "https://download.bell-sw.com/java/8u432%2B7/bellsoft-jre8u432%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u432+7-macos-amd64.pkg'
	else
		sha256 'ed78381c0c0953b4f357cdc9ab75d3d59da662f49492a1a7b04da4cefcdb8a2b'

		url "https://download.bell-sw.com/java/8u432%2B7/bellsoft-jre8u432%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u432+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

