cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.25,11'

	if Hardware::CPU.intel?
		sha256 '4cf38063b6add731c5b193c28cb78c5db4d412e626ee1f5db1cc7232118bac38'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jre11.0.25%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.25+11-macos-amd64-full.pkg'
	else
		sha256 '27581f03680dba4bc9af01519507c66667d07f333305d426d90e7a47f0e7cebd'

		url "https://download.bell-sw.com/java/11.0.25%2B11/bellsoft-jre11.0.25%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.25+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

