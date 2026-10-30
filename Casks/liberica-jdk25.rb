cask 'liberica-jdk25' do
	desc "100% open-source Java implementation"
	version '25.0.5.0.3,5'

	if Hardware::CPU.intel?
		sha256 '30eea50d58a912c017436d548917243e625f08afd9eaffe8c212ef16165c089d'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jdk25.0.5.0.3%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk25.0.5.0.3+5-macos-amd64.pkg'
	else
		sha256 '9c7c4a278e8b8822d6d8adc630e6d73e69c93e06732c69d0c1668d11f0a76d1d'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jdk25.0.5.0.3%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk25.0.5.0.3+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25'

end

