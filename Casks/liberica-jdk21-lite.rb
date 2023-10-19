cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.1,12'

	if Hardware::CPU.intel?
		sha256 '2792776ec2eb67316eba14aafa156bb34139cb9d26ec3f32a6208d15aad9b1ee'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jdk21.0.1%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.1+12-macos-amd64-lite.pkg'
	else
		sha256 'a988e17ddcbc65db77afe3d2435db05572737882fbcf15a19f4b52d865d013c8'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jdk21.0.1%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.1+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

