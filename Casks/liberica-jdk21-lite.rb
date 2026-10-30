cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.13.0.3,5'

	if Hardware::CPU.intel?
		sha256 '075bbf6b332e7079c82a6ea27c864754a8cfcab0c4f7d10648f3a36c77d1e77f'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jdk21.0.13.0.3%2B5-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.13.0.3+5-macos-amd64-lite.pkg'
	else
		sha256 '12fc6446825eb725a8dcd3a548e5abafba2975534d863585526016fb57573b72'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jdk21.0.13.0.3%2B5-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.13.0.3+5-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

