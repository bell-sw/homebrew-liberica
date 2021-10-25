cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.13,8'

	if Hardware::CPU.intel?
		sha256 'bc22ce30898abf8c4cd8976e75e5f4d90c2ccf777e02d9500e55f2ba22056aa9'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jre11.0.13%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.13+8-macos-amd64.pkg'
	else
		sha256 'b981a6ac2cb83325586fa4f9d01ead725d5caf544431e4dffab7e9710111d2fc'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jre11.0.13%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.13+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

