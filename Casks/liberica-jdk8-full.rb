cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,412'

	if Hardware::CPU.intel?
		sha256 'b3f8eb608eb8c861e0d82ffc64ffce67236119130bb70219e04a5d239943b574'

		url "https://download.bell-sw.com/java/8u412%2B9/bellsoft-jdk8u412%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u412+9-macos-amd64-full.pkg'
	else
		sha256 'f6707c616a0770aa0f8dbbbaa1253f6d74ee8e3d2191c3837a20c2565dad7fb2'

		url "https://download.bell-sw.com/java/8u412%2B9/bellsoft-jdk8u412%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u412+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

