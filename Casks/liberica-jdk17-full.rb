cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.1,12'

	if Hardware::CPU.intel?
		sha256 '493a6e4548e7a8b0e1a01e3e530817a5b63d8f2a9eafabcff7870b8438980140'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jdk17.0.1%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.1+12-macos-amd64-full.pkg'
	else
		sha256 'b9071f5e7a17f51735ca6160167e2a6bb7515cebecbe90e94976b0dcd5308b84'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jdk17.0.1%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.1+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

