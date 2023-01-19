cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,362'

	if Hardware::CPU.intel?
		sha256 '9e3fd0a90ae76de8b84e1eb96d499d5a8aaeff6aa4d84dcc235d1159babdb6a3'

		url "https://download.bell-sw.com/java/8u362%2B9/bellsoft-jdk8u362%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u362+9-macos-amd64.pkg'
	else
		sha256 'ef05d3fb275034cfeec9cbc52eb090afe9bbb10f464ae61e1aa84c6c5bcffb7a'

		url "https://download.bell-sw.com/java/8u362%2B9/bellsoft-jdk8u362%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u362+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

