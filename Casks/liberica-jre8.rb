cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,333'

	if Hardware::CPU.intel?
		sha256 '8ee0c21d2b4f505b5b7f101ada5ab44570070153c6d1dae3374ea7b7cd8f601b'

		url "https://download.bell-sw.com/java/8u333%2B2/bellsoft-jre8u333%2B2-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u333+2-macos-amd64.pkg'
	else
		sha256 '975121a348e6567102ae82c314f8732493087e193eaa3e74de30ed98d4cb35c0'

		url "https://download.bell-sw.com/java/8u333%2B2/bellsoft-jre8u333%2B2-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u333+2-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

