cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 '7e92aea10eb64824712de162e99a5f2176564a711a8751888cbd69f264ff10fc'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jdk17.0.4.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.4.1+1-macos-amd64.pkg'
	else
		sha256 '8b912a2f275368fb12c9fdc3e0a495da010d2bf2ca20fd55a9c048bc562b8898'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jdk17.0.4.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.4.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

