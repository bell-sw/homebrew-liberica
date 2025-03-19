cask 'liberica-jdk24' do
	desc "100% open-source Java implementation"
	version '24,37'

	if Hardware::CPU.intel?
		sha256 '34facbcac15c0b4ff1bcf4e29576051f7cd8631102f92ddf4c4ff40526488cda'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jdk24%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jdk24+37-macos-amd64.pkg'
	else
		sha256 '5221a68d630775a4d61ee9e447d8e2ef8da34e07aa00ab514b534f0d96c89665'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jdk24%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk24+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk24'

end

