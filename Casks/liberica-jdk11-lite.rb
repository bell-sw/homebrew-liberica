cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.16.1,1'

	if Hardware::CPU.intel?
		sha256 'f8efcca3307e76454b141250fc978239957c74ab378cceae9af411431882770c'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jdk11.0.16.1%2B1-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.16.1+1-macos-amd64-lite.pkg'
	else
		sha256 'db4fdf3954470109d8b99574b6520cedc65323f3203fb6001cb4f1b85dc34ef6'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jdk11.0.16.1%2B1-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.16.1+1-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

