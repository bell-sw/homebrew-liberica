cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.12,10'

	if Hardware::CPU.intel?
		sha256 'ba0f87f866d7bf6216b3413fe299aa976239b75e377c2359fe99656fcacc6cfc'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jdk17.0.12%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.12+10-macos-amd64.pkg'
	else
		sha256 'dcbd8442396f3bb974de208a5862ed7bc91d2a1b6d6e18c724adcef1bc1621e8'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jdk17.0.12%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.12+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

