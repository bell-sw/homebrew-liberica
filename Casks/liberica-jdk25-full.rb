cask 'liberica-jdk25-full' do
	desc "100% open-source Java implementation"
	version '25.0.3,11'

	if Hardware::CPU.intel?
		sha256 '7d149df9bd0cb4af6a1854d73ed28d1955fd15bff8826aaa4cbfaecf6e2f543b'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jdk25.0.3%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk25.0.3+11-macos-amd64-full.pkg'
	else
		sha256 '1b97275b62196caa9957a0fb588c612f902bba10e8a26ab3ad2d4e3da5deb3e8'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jdk25.0.3%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk25.0.3+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-full'

end

