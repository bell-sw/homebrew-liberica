cask 'liberica-jdk18-full' do
	desc "100% open-source Java implementation"
	version '18.0.2,10'

	if Hardware::CPU.intel?
		sha256 '344b0e0704b98b21ed001d1f335be88914c5f5c902d9a564ac3f415715d09d0c'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jdk18.0.2%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk18.0.2+10-macos-amd64-full.pkg'
	else
		sha256 'c2471ce973502670c3aae9889e8976f709cfa1d81cde135b392b2daec1b28d53'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jdk18.0.2%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk18.0.2+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-full'

end

