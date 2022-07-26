cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.4,8'

	if Hardware::CPU.intel?
		sha256 '54d3e1f4a5d7a0f3628df3f4629a265184930882e6d1bcc747965f2312ab70ec'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jre17.0.4%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.4+8-macos-amd64.pkg'
	else
		sha256 '93df054b11106706c19b2fc1ab5be9e5ea0ce1f13d46ef91848deadba1800bf2'

		url "https://download.bell-sw.com/java/17.0.4%2B8/bellsoft-jre17.0.4%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.4+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

