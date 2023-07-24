cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.20,8'

	if Hardware::CPU.intel?
		sha256 '8ccad8f3e919c0fdd12e9e0201e5aa1ad682aed1f8e5e0229d0a8d103ac76abc'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jre11.0.20%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.20+8-macos-amd64.pkg'
	else
		sha256 'fabcd4fd47b98d918f72b56b41e5969edc16b49e41678dc7430e1d50d4b24a31'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jre11.0.20%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.20+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

