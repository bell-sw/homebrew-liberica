cask 'liberica-jdk24-full' do
	desc "100% open-source Java implementation"
	version '24.0.1,11'

	if Hardware::CPU.intel?
		sha256 '3b7198c1737dc79dfd06715db313e5ee87a4c984eb56fa7e4361867dd973d4a5'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jdk24.0.1%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk24.0.1+11-macos-amd64-full.pkg'
	else
		sha256 '7855791fa23246a57729fc3fcb0493f8ea0abeb5df7d8c67d41682bbce81d227'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jdk24.0.1%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk24.0.1+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk24-full'

end

