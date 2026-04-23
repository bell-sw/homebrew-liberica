cask 'liberica-jre25' do
	desc "100% open-source Java implementation"
	version '25.0.3,11'

	if Hardware::CPU.intel?
		sha256 'db328a5bd80bf0d7997971450dd24dfc7753218038fcd4280fee7c5a29dcf221'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jre25.0.3%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre25.0.3+11-macos-amd64.pkg'
	else
		sha256 '3c5cc6fad4569e5e3e27a4b19aca587a5cbe8d1759f284c767defe4ac33cfc1b'

		url "https://download.bell-sw.com/java/25.0.3%2B11/bellsoft-jre25.0.3%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre25.0.3+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25'

end

