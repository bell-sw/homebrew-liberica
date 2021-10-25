cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.13,8'

	if Hardware::CPU.intel?
		sha256 'f712cc39f2c33bb88fad82979c5019baf2ae90df5cd86420848b45f223d8c274'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jdk11.0.13%2B8-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.13+8-macos-amd64-lite.pkg'
	else
		sha256 '8fc479fe2392570dd7466bf1cdc2dd5df4c94689bd8968146c85745c4c43f36b'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jdk11.0.13%2B8-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.13+8-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

