cask 'liberica-jdk18-lite' do
	desc "100% open-source Java implementation"
	version '18.0.2,10'

	if Hardware::CPU.intel?
		sha256 '9d557177948680b6bce57d938f61b06343d1ce787793df05e23322daa23ea12d'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jdk18.0.2%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk18.0.2+10-macos-amd64-lite.pkg'
	else
		sha256 '4fc90a79a3cd14e1b46f41b41a256f2969cc35624c8371c37e4c72882dd308d9'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jdk18.0.2%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk18.0.2+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18-lite'

end

