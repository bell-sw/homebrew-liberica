cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,402'

	if Hardware::CPU.intel?
		sha256 '38a644392bc3df6ed35d04ff2abe244676d4b77f94d71e67afa83fb86f682fd8'

		url "https://download.bell-sw.com/java/8u402%2B7/bellsoft-jdk8u402%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u402+7-macos-amd64.pkg'
	else
		sha256 '84e87f29780d8d50e3d8c4f5a4ea3ac2762378c97fbd0f0152624ba0265d2ef8'

		url "https://download.bell-sw.com/java/8u402%2B7/bellsoft-jdk8u402%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u402+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

