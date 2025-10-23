cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,472'

	if Hardware::CPU.intel?
		sha256 '8f7e4b0d5370bc7f0f186767e83d3e20b78c3954686ef0d695d7c28eeec21d92'

		url "https://download.bell-sw.com/java/8u472%2B9/bellsoft-jre8u472%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u472+9-macos-amd64.pkg'
	else
		sha256 '7d54f3d54342edd2feb7a07877d402531e3ac36be79466a3fac17f0db996dd36'

		url "https://download.bell-sw.com/java/8u472%2B9/bellsoft-jre8u472%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u472+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

