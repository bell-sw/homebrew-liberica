cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17,35'

	if Hardware::CPU.intel?
		sha256 '4c7976aebb3e88e9637b7b650795204d90c6df10b1103561624644b681474f90'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jdk17%2B35-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17+35-macos-amd64.pkg'
	else
		sha256 '7ffd599f6e18138d46e1aa7d421c643ce1d7878a224d3a6a396e64f1ba348205'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jdk17%2B35-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17+35-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

