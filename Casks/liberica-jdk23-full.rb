cask 'liberica-jdk23-full' do
	desc "100% open-source Java implementation"
	version '23.0.2,9'

	if Hardware::CPU.intel?
		sha256 '84c0d2ee36afdec68011fd1c402a0fd99180b99042d0869ec7ab313411d78942'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jdk23.0.2%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk23.0.2+9-macos-amd64-full.pkg'
	else
		sha256 '98773cdafe9123b877930b334e5cb34b750564f2d239e3dea4876f8ccfe944b0'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jdk23.0.2%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk23.0.2+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk23-full'

end

