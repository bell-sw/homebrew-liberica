cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.20,10'

	if Hardware::CPU.intel?
		sha256 '46382dc43f6f1fd47753678921e33ed69472e87aa06edc40e75b53926659f91f'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jdk17.0.20%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.20+10-macos-amd64.pkg'
	else
		sha256 '031017ccd63424bbf053b62e45348456f4c87758f293b7e56715d810a57bf424'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jdk17.0.20%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.20+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

