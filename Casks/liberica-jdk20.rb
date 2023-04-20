cask 'liberica-jdk20' do
	desc "100% open-source Java implementation"
	version '20.0.1,10'

	if Hardware::CPU.intel?
		sha256 '9f4f3046673912663a3738e5d5b6fc67c8addd05d4a89d96b7218073b2a8df8b'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk20.0.1+10-macos-amd64.pkg'
	else
		sha256 'c86162a339989a8b4f2c5e99142a70670b09c815f23b0e76b3b7f60594f43dd3'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk20.0.1+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk20'

end

