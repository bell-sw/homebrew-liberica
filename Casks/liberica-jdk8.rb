cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,492'

	if Hardware::CPU.intel?
		sha256 '884c3a6f11308abcfe683796b68d5ad4c0fc1d0f040a52968a0587451ae5b01d'

		url "https://download.bell-sw.com/java/8u492%2B9/bellsoft-jdk8u492%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u492+9-macos-amd64.pkg'
	else
		sha256 'abf6788159374af11e5a845ea82f950927236595b21d612d34f10054fbb0330e'

		url "https://download.bell-sw.com/java/8u492%2B9/bellsoft-jdk8u492%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u492+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

