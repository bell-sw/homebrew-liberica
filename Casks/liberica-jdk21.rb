cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.4,9'

	if Hardware::CPU.intel?
		sha256 '0920cbae51c14906a41a102c9381c66843df1b5fd71b4fb51818f8efd4eb7b3c'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jdk21.0.4%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.4+9-macos-amd64.pkg'
	else
		sha256 '98dd9866680ac1156cd62bdb6eb4d3e6384ad41584c9f431e6f82edf462161d6'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jdk21.0.4%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.4+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

