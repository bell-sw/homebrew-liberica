cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,345'

	if Hardware::CPU.intel?
		sha256 '474c588ff7e1cf5481f30bd841b63ed75b14346d931485dc8174ab3e885b8368'

		url "https://download.bell-sw.com/java/8u345%2B1/bellsoft-jdk8u345%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u345+1-macos-amd64-full.pkg'
	else
		sha256 'a905e4532a4772b549cd636871a49421c4c260cef73c8cc426af060658803f8e'

		url "https://download.bell-sw.com/java/8u345%2B1/bellsoft-jdk8u345%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u345+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

