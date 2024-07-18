cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,422'

	if Hardware::CPU.intel?
		sha256 'e3e8f680cc2ee06bd34286ffd08297c4e3350feb2ec9c73342f4ba1e01da4e40'

		url "https://download.bell-sw.com/java/8u422%2B6/bellsoft-jre8u422%2B6-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u422+6-macos-amd64.pkg'
	else
		sha256 '22ec9c83d661f451f8e3ba26bc6f21cf6413ce06ef3ed1c5f1401ae99aee259a'

		url "https://download.bell-sw.com/java/8u422%2B6/bellsoft-jre8u422%2B6-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u422+6-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

