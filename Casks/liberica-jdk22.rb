cask 'liberica-jdk22' do
	desc "100% open-source Java implementation"
	version '22,37'

	if Hardware::CPU.intel?
		sha256 'd50ef6733b2cfe5c938bb0da135ad3535ff7dbf495528e597f3e8cae8addabaa'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jdk22%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jdk22+37-macos-amd64.pkg'
	else
		sha256 'afca29d69328f26bdae94fb1a3c459c13f093495947a518d2793243473ae70e9'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jdk22%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk22+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk22'

end

