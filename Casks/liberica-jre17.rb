cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.20,10'

	if Hardware::CPU.intel?
		sha256 'eff27e3008590ec1a5ea32380d0ccd91ef64c39c0a05df82cd8106d49d2e2b18'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jre17.0.20%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.20+10-macos-amd64.pkg'
	else
		sha256 '01656353be0bc2c679a3f6bb357831779813ebebc76a7e263de272d0f8cfa1cf'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jre17.0.20%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.20+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

