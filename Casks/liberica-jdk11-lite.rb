cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.30,9'

	if Hardware::CPU.intel?
		sha256 '0777a0dc27a0a89eaa95a05c219fc1c2ff4e23754dc8905f026618ebfa784603'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jdk11.0.30%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.30+9-macos-amd64-lite.pkg'
	else
		sha256 '236182f9ecac55c8107dc7fb7dd219d785dd786ce61dc57d99b460bfa0ee16aa'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jdk11.0.30%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.30+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

