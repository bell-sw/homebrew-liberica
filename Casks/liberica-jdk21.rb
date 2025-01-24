cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.6,10'

	if Hardware::CPU.intel?
		sha256 '9daee80702599bd77a249fe9f0e7e07697ab529cb3b2fef8e7a4e7e54c5abcad'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jdk21.0.6%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.6+10-macos-amd64.pkg'
	else
		sha256 'ff0bdab392184dd95acfaa43231077d26cf6dcac5939473313b5c7c778f94371'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jdk21.0.6%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.6+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

