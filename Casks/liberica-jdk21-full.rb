cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.5,11'

	if Hardware::CPU.intel?
		sha256 'a55d9cc6e550ef45fa2bbc760e41c35c6c9167ec405d2d3b87a80e106858fd03'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jdk21.0.5%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.5+11-macos-amd64-full.pkg'
	else
		sha256 'd550e94c3d5bb4464ef7bca19b1d1e3c0150685222535b38df737f00ff02804b'

		url "https://download.bell-sw.com/java/21.0.5%2B11/bellsoft-jdk21.0.5%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.5+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

