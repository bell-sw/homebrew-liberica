cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.20,8'

	if Hardware::CPU.intel?
		sha256 '6c8261b3fe270de0ebcaa7781e217750eeab5391d0a0ac39b148aff73cc2cdd7'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jdk11.0.20%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.20+8-macos-amd64-full.pkg'
	else
		sha256 '6749fe368555a620e53792578e444b7b5500c4f2113a733a9ddc3b9a26002730'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jdk11.0.20%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.20+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

