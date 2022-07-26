cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.16,8'

	if Hardware::CPU.intel?
		sha256 '9f9f3779520aad7b71ccf8816e7f9607dec01506b955606a8535bd6567cab1cc'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jre11.0.16%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.16+8-macos-amd64-full.pkg'
	else
		sha256 '18e472bb2a5e73c67238282a61748de6d7e34d766ac8014c1f1cc0bf2bd7debf'

		url "https://download.bell-sw.com/java/11.0.16%2B8/bellsoft-jre11.0.16%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.16+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

