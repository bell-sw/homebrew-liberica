cask 'liberica-jdk25' do
	desc "100% open-source Java implementation"
	version '25.0.3,11'

	if Hardware::CPU.intel?
		sha256 'd93c7ee35bae01424c659c3aa6d436c254e7270ccf7dace306dd661e7b6f755c'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jdk25.0.3%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk25.0.3+11-macos-amd64.pkg'
	else
		sha256 '5ed2c89579c3698d255f685e52ce796c5103e8f4c94df3d685453e686482980a'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jdk25.0.3%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk25.0.3+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25'

end

