cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.9,11'

	if Hardware::CPU.intel?
		sha256 '69b1fb61e3904814cc7324ee8a5043b8603e81bffdda21730706af9045fb9356'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jdk17.0.9%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.9+11-macos-amd64-full.pkg'
	else
		sha256 '93e2d2bdf2c03a0ebfaff5d8143c2b27a04a7ad00aa9b17e39358d2dbfec0c94'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jdk17.0.9%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.9+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

