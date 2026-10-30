cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,513'

	if Hardware::CPU.intel?
		sha256 '9e3f03428ca66c8bdd0ea3edd0756d3f6841df4d9fca840793efff66efb14f96'

		url "https://download.bell-sw.com/java/8u513%2B9/bellsoft-jdk8u513%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u513+9-macos-amd64.pkg'
	else
		sha256 'ee693c32b72368bda2051c706f17df98ec69b5f196dc6ab6c49b443a05c9157d'

		url "https://download.bell-sw.com/java/8u513%2B9/bellsoft-jdk8u513%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u513+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

