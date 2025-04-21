cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,452'

	if Hardware::CPU.intel?
		sha256 '4aae76219e63c540eb4b81092dba3e75cea1eb6f06e29706efe1c250ebbfaf44'

		url "https://download.bell-sw.com/java/8u452%2B11/bellsoft-jdk8u452%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u452+11-macos-amd64.pkg'
	else
		sha256 '493264d4893a89dd700bc78248d71c7d38cc7f72c8dcecbef99fadb6e0efa675'

		url "https://download.bell-sw.com/java/8u452%2B11/bellsoft-jdk8u452%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u452+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

