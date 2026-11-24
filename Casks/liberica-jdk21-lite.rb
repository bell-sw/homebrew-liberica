cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.13.1,5'

	if Hardware::CPU.intel?
		sha256 '9244d56490648386759f47a398a92ea9ce921b6be3f2822bcbdd59a818b1966b'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jdk21.0.13.1%2B5-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.13.1+5-macos-amd64-lite.pkg'
	else
		sha256 '1416a44d7b8cfa8d192cc7d7d05a8a1bd1d93ab19796791efe06d69b4380fe02'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jdk21.0.13.1%2B5-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.13.1+5-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

