cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17,35'

	if Hardware::CPU.intel?
		sha256 'f81f3a56e3c25b90eae3d2be4656c5d307ec05ff78e36ad5d23eb73b4367ebdd'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jdk17%2B35-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17+35-macos-amd64-full.pkg'
	else
		sha256 '4fc26a651ba56b089cb0aecbdf9c98ed0412e16db3122117b2fc6ddadce91adb'

		url "https://download.bell-sw.com/java/17%2B35/bellsoft-jdk17%2B35-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17+35-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

