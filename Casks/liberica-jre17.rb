cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.6,10'

	if Hardware::CPU.intel?
		sha256 'ea98021c4fb65ab1e46a9d1381b408dfcd7b77e70fa8c7ce6e30d49d877b0f71'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jre17.0.6%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.6+10-macos-amd64.pkg'
	else
		sha256 '2a3450bee92a417493e81130233c8f751e57b9ee4ee20a7e20ed04396be2ee12'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jre17.0.6%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.6+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

