cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.25,11'

	if Hardware::CPU.intel?
		sha256 '43da51022cbe4664574facf78bc602294e880ec865a169f1a67a703bac08d678'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jdk11.0.25%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.25+11-macos-amd64.pkg'
	else
		sha256 'b99573008dfddf1fdbf1b2f2301b67e6857f5886beaa60fa04ba110aa65aecaf'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jdk11.0.25%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.25+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

