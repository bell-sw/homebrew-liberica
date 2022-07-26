cask 'liberica-jdk18' do
	desc "100% open-source Java implementation"
	version '18.0.2,10'

	if Hardware::CPU.intel?
		sha256 '877a5df3fc634fe5ee1f9c452683b2d67a3f11eae563992da47c231313c7da11'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jdk18.0.2%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk18.0.2+10-macos-amd64.pkg'
	else
		sha256 'adde0783357e2dfa66bba313b5ebe38367a2cfc86fadd29fa4248d78379caca6'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jdk18.0.2%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk18.0.2+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18'

end

