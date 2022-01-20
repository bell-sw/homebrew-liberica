cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.2,9'

	if Hardware::CPU.intel?
		sha256 'e5ca7e42a6e536f652228ead2e4efd7f3f0f504df31939334683f4eccd785bf7'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jdk17.0.2%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.2+9-macos-amd64-lite.pkg'
	else
		sha256 'cdf05f9329e8e541416938e5a535e232ff4d3d5ec5a781b7750b946291131684'

		url "https://download.bell-sw.com/java/17.0.2%2B9/bellsoft-jdk17.0.2%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.2+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

