cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.3.1,2'

	if Hardware::CPU.intel?
		sha256 'ca0e8685ff4f99e35f054b95488778c1cfe67d610930081a8de9003d788783f5'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jdk17.0.3.1%2B2-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.3.1+2-macos-amd64.pkg'
	else
		sha256 'b19fddea173ff0245adc8b011b32a77c67326413ac0177c370d67c5d1799188c'

		url "https://download.bell-sw.com/java/17.0.3.1%2B2/bellsoft-jdk17.0.3.1%2B2-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.3.1+2-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

