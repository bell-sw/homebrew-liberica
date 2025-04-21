cask 'liberica-jdk24' do
	desc "100% open-source Java implementation"
	version '24.0.1,11'

	if Hardware::CPU.intel?
		sha256 '96036ce7fbac2332af016d300babff787fd0be235b3d2af59ff1edf78375489a'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jdk24.0.1%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk24.0.1+11-macos-amd64.pkg'
	else
		sha256 '42fa7e3df3f2a3763f2b8a0b1dd721a1f9bbdc9ac8bcbd3dff58791a353a7cc3'

		url "https://download.bell-sw.com/java/24.0.1%2B11/bellsoft-jdk24.0.1%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk24.0.1+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk24'

end

