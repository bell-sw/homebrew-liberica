cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,392'

	if Hardware::CPU.intel?
		sha256 '42772361e436116207aef07031381132bcca17c27861529ec0e00d46430a3a99'

		url "https://download.bell-sw.com/java/8u392%2B9/bellsoft-jre8u392%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u392+9-macos-amd64-full.pkg'
	else
		sha256 '1521ddb9edd74865b688622a86087e4ade01d819cd330605bbd8e04ebacd942f'

		url "https://download.bell-sw.com/java/8u392%2B9/bellsoft-jre8u392%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u392+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

