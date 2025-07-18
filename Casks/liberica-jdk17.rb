cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.16,12'

	if Hardware::CPU.intel?
		sha256 'a8ca77e09a97e63b3d6e2063c2f134a2f2ee322b8cd02740cae09da233841752'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jdk17.0.16%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.16+12-macos-amd64.pkg'
	else
		sha256 '0a09ce75ebfe7770de2b96cea1783c287ad03439eb6ba3fa05d1e5dc47900331'

		url "https://download.bell-sw.com/java/17.0.16%2B12/bellsoft-jdk17.0.16%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.16+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

