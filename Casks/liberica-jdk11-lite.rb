cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.25,11'

	if Hardware::CPU.intel?
		sha256 '5ee0006f24fbff5f9ac2ddde73bf937c88d1c1d98b416c642c962cc0738b9a0a'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jdk11.0.25%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.25+11-macos-amd64-lite.pkg'
	else
		sha256 '14f4b3b0862b2408208dad3fea8d817d1e139501f4ca512a859bd36c32b5f5f0'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jdk11.0.25%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.25+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

