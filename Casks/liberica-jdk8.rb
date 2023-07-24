cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,382'

	if Hardware::CPU.intel?
		sha256 '09cb257916e4a3ef002a23656b6b6ec2cb78d0d788c772cea771c42b51e1e92b'

		url "https://download.bell-sw.com/java/8u382%2B6/bellsoft-jdk8u382%2B6-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u382+6-macos-amd64.pkg'
	else
		sha256 '84d46acd4ddddb4649a5c85970b5a5f83b188aed16b225d19915df4dd34c9eae'

		url "https://download.bell-sw.com/java/8u382%2B6/bellsoft-jdk8u382%2B6-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u382+6-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

