cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.2,14'

	if Hardware::CPU.intel?
		sha256 '918a4ba0098743a285685b90dfd89a6ac3dc5454b412e69b72c04d6e1e780ed0'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jdk21.0.2%2B14-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.2+14-macos-amd64-lite.pkg'
	else
		sha256 'b01cd6e0cd3dfc594e845e18b811ec97d46df2ad32fddb989f7ae6482f7f93de'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jdk21.0.2%2B14-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.2+14-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

