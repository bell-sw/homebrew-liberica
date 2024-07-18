cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.24,9'

	if Hardware::CPU.intel?
		sha256 'febcf11948cd084cf43cdeea664420275a9793d46031700dee6efd9accaece0a'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jdk11.0.24%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.24+9-macos-amd64.pkg'
	else
		sha256 '5105e8210a9ca1a8b09b742bf052b163b700ac3304e01f34b4d6c5e61f812325'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jdk11.0.24%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.24+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

