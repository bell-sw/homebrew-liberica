cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.33.0.3,7'

	if Hardware::CPU.intel?
		sha256 'e9514c7856c50cc6ded427672fbbd7178fac887db81154be261229b7a955925b'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jre11.0.33.0.3%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.33.0.3+7-macos-amd64.pkg'
	else
		sha256 'c4db26347a96f0a2d3c68cfc7162520496bc9e75cb6f6308cbb42676d07c7fdd'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jre11.0.33.0.3%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.33.0.3+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

