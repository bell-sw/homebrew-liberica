cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.17,7'

	if Hardware::CPU.intel?
		sha256 '5d6ab5f8ac6155abc2f37ea30dfcca0d945ea89f3f56d941816df7827b081627'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jre11.0.17%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.17+7-macos-amd64-full.pkg'
	else
		sha256 'fc982c5cc1292467dbbce977c066eafd7a6436787eaaf184389c99edd77e8754'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jre11.0.17%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.17+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

