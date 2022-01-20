cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.14,9'

	if Hardware::CPU.intel?
		sha256 '4dcc2bb0ecbb63ea596154e948e3b8a36c27888a9753d6b4905cfbc864184431'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jre11.0.14%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.14+9-macos-amd64.pkg'
	else
		sha256 '1dc76f6670ae3b4469b4d2de471d6dd149abd96a309e043a10e087805ac05b85'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jre11.0.14%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.14+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

