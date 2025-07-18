cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,462'

	if Hardware::CPU.intel?
		sha256 'b5d03e7e7405db4f8795b8d75d2c11816f1fdb60a9580651fefc05d7ecb2c545'

		url "https://download.bell-sw.com/java/8u462%2B11/bellsoft-jdk8u462%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u462+11-macos-amd64.pkg'
	else
		sha256 '7aa451d13f2b78fe5a38e014f1e292febbff9b54668fdf0c4690716a1a53111a'

		url "https://download.bell-sw.com/java/8u462%2B11/bellsoft-jdk8u462%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u462+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

