cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.7,7'

	if Hardware::CPU.intel?
		sha256 '32fd86cc6f95f644ec6c6f6ba578173f0f305afa9c691aa0bac66399fd7d0e34'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.7+7-macos-amd64.pkg'
	else
		sha256 'de6875398ad752e4d8259bf058806e6c0d82ace346eb2a307d32833765546fef'

		url "https://download.bell-sw.com/java/17.0.7%2B7/bellsoft-jdk17.0.7%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.7+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

