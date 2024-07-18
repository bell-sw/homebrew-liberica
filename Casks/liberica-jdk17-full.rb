cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.12,10'

	if Hardware::CPU.intel?
		sha256 '86ff76fdb8f7733dd0e71bc1318ae60382948e6107e3b20278d04d0d2806916f'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jdk17.0.12%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.12+10-macos-amd64-full.pkg'
	else
		sha256 '400961f83f71dac677227c16485065d44954f696c8401ee6bd9790d8137eb30b'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jdk17.0.12%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.12+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

