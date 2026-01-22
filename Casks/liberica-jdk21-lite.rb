cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.10,10'

	if Hardware::CPU.intel?
		sha256 'ac4e049ff2bdc66e750997140b10b3eebc2ec8dcc7423d9280c97895a5841fd6'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jdk21.0.10%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.10+10-macos-amd64-lite.pkg'
	else
		sha256 'e1bf48a853e1d35beba1727b292a4cb6ba213c0ede02d5d11cd88851e8ff9585'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jdk21.0.10%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.10+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

