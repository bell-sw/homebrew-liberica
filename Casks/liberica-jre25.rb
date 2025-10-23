cask 'liberica-jre25' do
	desc "100% open-source Java implementation"
	version '25.0.1,11'

	if Hardware::CPU.intel?
		sha256 '56c5691c8d7f574cf733a218801fe18a04575165e107c73b9186c66c77a05c00'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jre25.0.1%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre25.0.1+11-macos-amd64.pkg'
	else
		sha256 '1ef6a5c79e9addf86989d899c65c3af59025dc750d768d2bd13097fac476e08d'

		url "https://download.bell-sw.com/java/25.0.1%2B11/bellsoft-jre25.0.1%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre25.0.1+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25'

end

