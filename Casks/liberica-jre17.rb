cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.10,13'

	if Hardware::CPU.intel?
		sha256 'fc8a391c1e81ba84fc3a39d0b85c141cc03149559be7cd778ddbb03db65e0b2f'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jre17.0.10%2B13-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.10+13-macos-amd64.pkg'
	else
		sha256 'ca6faef44541b599b18651f37cf4e69b01187235ece6c604fa4a7127c03bd271'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jre17.0.10%2B13-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.10+13-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

