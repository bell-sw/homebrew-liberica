cask 'liberica-jre25' do
	desc "100% open-source Java implementation"
	version '25.0.2,12'

	if Hardware::CPU.intel?
		sha256 '50b5c716e6d4e39aeef257e0a5dc86aec0c2470df944769ce3a279de62199fcd'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jre25.0.2%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre25.0.2+12-macos-amd64.pkg'
	else
		sha256 'c4a57298ca258b85c684474b1ebb453c286c262a32244d65ddff82e715727a4d'

		url "https://download.bell-sw.com/java/25.0.2%2B12/bellsoft-jre25.0.2%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre25.0.2+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25'

end

