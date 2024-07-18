cask 'liberica-jdk22' do
	desc "100% open-source Java implementation"
	version '22.0.2,11'

	if Hardware::CPU.intel?
		sha256 '8338314b859cab77e5652a7c8a3a8f39938201a12fc762eedd0e02ec79dad473'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jdk22.0.2%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk22.0.2+11-macos-amd64.pkg'
	else
		sha256 'a20c42365890959a0ad9ece7a43d1721083ba8dd0d9464c36f5b618e7cfacdfb'

		url "https://download.bell-sw.com/java/22.0.2%2B11/bellsoft-jdk22.0.2%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk22.0.2+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk22'

end

