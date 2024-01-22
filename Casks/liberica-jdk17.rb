cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.10,13'

	if Hardware::CPU.intel?
		sha256 '6fd8e638ec89ac59c5789e5af344d9b20cc9036e93bbe97910b01c1ee1343d72'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jdk17.0.10%2B13-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.10+13-macos-amd64.pkg'
	else
		sha256 'eeac3507ab546503161b53402088337cd488038125240901c5c18cc5b431bc9b'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jdk17.0.10%2B13-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.10+13-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

