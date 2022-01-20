cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.14,9'

	if Hardware::CPU.intel?
		sha256 '91e8022ac658730de57ef4b2eb2e4d9f51fece33fc605ace8e80b05e4b10332b'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jdk11.0.14%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.14+9-macos-amd64-full.pkg'
	else
		sha256 '53a72f811b51194869f9a341c7cac5dfd3e6a22df361780e919b3a97a201cba7'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jdk11.0.14%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.14+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

