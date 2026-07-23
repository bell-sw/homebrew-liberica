cask 'liberica-jre25' do
	desc "100% open-source Java implementation"
	version '25.0.4,9'

	if Hardware::CPU.intel?
		sha256 '9d37059e89256d87f1b853faa39272d2accaa0319e6b56f188739335ba0557a2'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jre25.0.4%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre25.0.4+9-macos-amd64.pkg'
	else
		sha256 '3bd1092aec8da23585458ee48e07349a4b1a039bb908775b96b55057d1ce5777'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jre25.0.4%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre25.0.4+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25'

end

