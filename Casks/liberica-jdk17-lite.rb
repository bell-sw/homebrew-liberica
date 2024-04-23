cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.11,10'

	if Hardware::CPU.intel?
		sha256 'a2d5502fbd5a089ab6c1786a502d2946728baf456bebe7e05deb16a7845dd14a'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jdk17.0.11%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.11+10-macos-amd64-lite.pkg'
	else
		sha256 'b17dc7b424d62b40b195d7358f5962d8de1ceaaf806aa83a5c7c6e4613fedf31'

		url "https://download.bell-sw.com/java/17.0.11%2B10/bellsoft-jdk17.0.11%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.11+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

