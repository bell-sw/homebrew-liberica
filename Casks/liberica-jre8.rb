cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,504'

	if Hardware::CPU.intel?
		sha256 '1bcb3b8329faf6dd2188133268447b0e9d24d4951f8451001324764e95a88d8c'

		url "https://download.bell-sw.com/java/8u504%2B1/bellsoft-jre8u504%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u504+1-macos-amd64.pkg'
	else
		sha256 '04fd84369cfcb7e8b36b886364ae46d1f4156542816e28ecb146cadb68fcbf1d'

		url "https://download.bell-sw.com/java/8u504%2B1/bellsoft-jre8u504%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u504+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

