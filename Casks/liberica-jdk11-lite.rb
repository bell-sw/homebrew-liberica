cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.32,11'

	if Hardware::CPU.intel?
		sha256 '8e7a22c3263768fca521a5feba4dbef45c4c975328db03a2ddcf0354799cd0f1'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jdk11.0.32%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.32+11-macos-amd64-lite.pkg'
	else
		sha256 '63899207ca925eff5993ff6d3a7923538f00365c09604d3b4ff716c8c96a9e36'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jdk11.0.32%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.32+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

