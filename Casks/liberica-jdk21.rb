cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.12.1,1'

	if Hardware::CPU.intel?
		sha256 '1e693060ea088ff7bd087e762719fe9c19915e2d01816778281fd9ff71aedb86'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jdk21.0.12.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.12.1+1-macos-amd64.pkg'
	else
		sha256 '954001d4b43684e68a80fa08f9c43638d957952e98de169452223721a8b75bed'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jdk21.0.12.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.12.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

