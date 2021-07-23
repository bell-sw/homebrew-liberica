cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.12,7'

	if Hardware::CPU.intel?
		sha256 '20a9e9e51f0c11450f8b8a1f330cbec77461f0f0c4fb5371a10a847a2b4e318c'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jdk11.0.12%2B7-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.12+7-macos-amd64-lite.pkg'
	else
		sha256 '69d79a1c4441deec7e30b840b41a461f336fa197626ea21c05d52302fc01b9ce'

		url "https://download.bell-sw.com/java/11.0.12%2B7/bellsoft-jdk11.0.12%2B7-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.12+7-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

