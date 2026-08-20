cask 'liberica-jre25' do
	desc "100% open-source Java implementation"
	version '25.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 '5e21e8cc9227a5e167d85a7d9030e97356e6cef64bc0f98cf777422361112594'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jre25.0.4.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre25.0.4.1+1-macos-amd64.pkg'
	else
		sha256 'e18c1ff7a5b4dddc64ce92e5b3004249b4e979335ffb1099810aac2ae70db434'

		url "https://download.bell-sw.com/java/25.0.4.1%2B1/bellsoft-jre25.0.4.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre25.0.4.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25'

end

