cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.9,11'

	if Hardware::CPU.intel?
		sha256 '1c55b32e5a02c9d1f0da9586bc5f6b9e46c8257da74a891b7e7b2552ccaa7375'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jdk21.0.9%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.9+11-macos-amd64-lite.pkg'
	else
		sha256 'd1a1aab54a262ac6b47eb2ee7f4fbf3b8822554790d17d6b4f2decd2d1e5bebf'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jdk21.0.9%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.9+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

