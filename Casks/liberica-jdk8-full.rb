cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,492'

	if Hardware::CPU.intel?
		sha256 'b16d63f6e1b33d6a242a8939e49a0f6b2928d90f8318f280c4569ae9e322332e'

		url "https://download.bell-sw.com/java/8u492%2B9/bellsoft-jdk8u492%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u492+9-macos-amd64-full.pkg'
	else
		sha256 '9a16473881c23402e8e2e8ed6903997e852b7a6bbe5c5efa3584ca9c9b0f8ea1'

		url "https://download.bell-sw.com/java/8u492%2B9/bellsoft-jdk8u492%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u492+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

