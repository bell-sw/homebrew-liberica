cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.13.1,5'

	if Hardware::CPU.intel?
		sha256 'c35966b60b90013c806845084c74d7bc4eff954a5bb006d97fbc9cc9e022bec7'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jdk21.0.13.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.13.1+5-macos-amd64.pkg'
	else
		sha256 'd7c92afff4752375b2abb71e9bd7268ff5376f33f84e470e6421bf4ab3990ec9'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jdk21.0.13.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.13.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

