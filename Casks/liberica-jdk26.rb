cask 'liberica-jdk26' do
	desc "100% open-source Java implementation"
	version '26.0.1,10'

	if Hardware::CPU.intel?
		sha256 '6d62606d76b67165212d702de2f3189dad76e150d2b8ed30ead461e586993a64'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jdk26.0.1%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk26.0.1+10-macos-amd64.pkg'
	else
		sha256 '3d61637762c6a7a7a67e5087dd833cad8c4a86484d828cf12267ac87130922a1'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jdk26.0.1%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk26.0.1+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk26'

end

