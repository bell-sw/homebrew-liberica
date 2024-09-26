cask 'liberica-jdk23' do
	desc "100% open-source Java implementation"
	version '23,38'

	if Hardware::CPU.intel?
		sha256 'f24d782d4122fc51eee2750224361563bc1bfabf3eb08a566c16dd46c8ce7516'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jdk23%2B38-macos-amd64.pkg"
  		pkg 'bellsoft-jdk23+38-macos-amd64.pkg'
	else
		sha256 '318aa7395bad54e79499799863691889b6d21ec8c1b8422934d0f1daffde06e4'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jdk23%2B38-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk23+38-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk23'

end

