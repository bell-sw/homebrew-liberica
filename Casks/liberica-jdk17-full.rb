cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.21.1,5'

	if Hardware::CPU.intel?
		sha256 '328d762648ff6f792fe1f7f90b1ea2caba8e565c785ac322752ab3a8f9765015'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jdk17.0.21.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.21.1+5-macos-amd64-full.pkg'
	else
		sha256 'af91b881d81ba19ddc07a2a7a148afba2b48e631c6f6ece4725a2c748032c791'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jdk17.0.21.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.21.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

