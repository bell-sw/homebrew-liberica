cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.17,7'

	if Hardware::CPU.intel?
		sha256 '5d8d0bab849a294d5aa1a19f2f2e86c00af5b0668330ec73636f58621b8d64cb'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jdk11.0.17%2B7-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.17+7-macos-amd64-lite.pkg'
	else
		sha256 '611af5eb4a65fa3935f0262f20a8554539e98f53bb721be1d79bd37fff0c8279'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jdk11.0.17%2B7-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.17+7-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

