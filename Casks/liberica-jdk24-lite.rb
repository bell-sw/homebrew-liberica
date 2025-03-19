cask 'liberica-jdk24-lite' do
	desc "100% open-source Java implementation"
	version '24,37'

	if Hardware::CPU.intel?
		sha256 '477749db81cbbe0601c8b99f1466c827c2783a8dddd6ab3b01f04db613bb592c'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jdk24%2B37-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk24+37-macos-amd64-lite.pkg'
	else
		sha256 '1691b0bf9cece3c0554f1954d50195a19c74d9bc45b0683b3ddaf70db623b99b'

		url "https://download.bell-sw.com/java/24%2B37/bellsoft-jdk24%2B37-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk24+37-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk24-lite'

end

