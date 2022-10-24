cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.5,8'

	if Hardware::CPU.intel?
		sha256 '64498363fdb4018af2c21fb11e1d7d27fd9c5b80335fff3b5e9b39c7e65fefd8'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jre17.0.5%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.5+8-macos-amd64.pkg'
	else
		sha256 '7d283612feb2b29850eda538d930b5ecdb479f8f54decc204a2025c492af4dd2'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jre17.0.5%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.5+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

