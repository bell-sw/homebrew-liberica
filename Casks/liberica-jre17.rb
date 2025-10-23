cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.17,11'

	if Hardware::CPU.intel?
		sha256 'e4cf359f9f4e6481677c47aed5bb717a0bcb10929cfbf38cb92951277e5fe371'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jre17.0.17%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.17+11-macos-amd64.pkg'
	else
		sha256 '3e08d52f02f589c2527d44d75d059e92ee01f756d8010b8d8301066dda68f35f'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jre17.0.17%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.17+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

