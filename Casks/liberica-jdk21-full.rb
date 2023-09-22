cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21,37'

	if Hardware::CPU.intel?
		sha256 '1793cfeac86dd0ec191ad3297f1e6f890a96db909e9447365f2d0e8b23e08a57'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jdk21%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21+37-macos-amd64-full.pkg'
	else
		sha256 'f0d6404181a42d16b1f13f013859d68ff4c5a4c5b8d974a668640290f5524700'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jdk21%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

