cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.15,10'

	if Hardware::CPU.intel?
		sha256 'ab1667e51954a72ae01ceb305fdc2a829d70afcc653ca3356d2d3d06b3a5e62b'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jdk17.0.15%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.15+10-macos-amd64.pkg'
	else
		sha256 '32773b5c2ecbe1f76a403faa88d61e7f7afcc28f50e9c3ee630d8080dd4a9b75'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jdk17.0.15%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.15+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

