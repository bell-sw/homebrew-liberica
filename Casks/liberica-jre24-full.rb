cask 'liberica-jre24-full' do
	desc "100% open-source Java implementation"
	version '24.0.2,12'

	if Hardware::CPU.intel?
		sha256 'b3bae9a31e158b569f22a495645e928e0339b548416c90ee645445752c466c3c'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jre24.0.2%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre24.0.2+12-macos-amd64-full.pkg'
	else
		sha256 '7ee1bb138a797d2af9d203c6eb9bd45117245f5a8b1defe9b394b1b5315477c2'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jre24.0.2%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre24.0.2+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre24-full'

end

