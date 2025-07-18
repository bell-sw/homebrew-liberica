cask 'liberica-jdk24-full' do
	desc "100% open-source Java implementation"
	version '24.0.2,12'

	if Hardware::CPU.intel?
		sha256 '1eb4d06f3069721cac779f754cbd33f0641a9e68559e794b4862b6d13745fb3c'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jdk24.0.2%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk24.0.2+12-macos-amd64-full.pkg'
	else
		sha256 '60c0ca6ca3acd5640e3d10c19f3f3c4b2a64908a5d08d25bf97468e9d808c2f1'

		url "https://download.bell-sw.com/java/24.0.2%2B12/bellsoft-jdk24.0.2%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk24.0.2+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 24'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk24-full'

end

