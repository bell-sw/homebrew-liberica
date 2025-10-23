cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.17,11'

	if Hardware::CPU.intel?
		sha256 '2187219db7a85a84d58c34f398e6ba69c81e10c11b86833a23e6822404adc648'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jdk17.0.17%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.17+11-macos-amd64.pkg'
	else
		sha256 'c87f47af5e8d176c7c1947e339f50261268932398b5ffc55a6c22da47b56f282'

		url "https://download.bell-sw.com/java/17.0.17%2B11/bellsoft-jdk17.0.17%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.17+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

