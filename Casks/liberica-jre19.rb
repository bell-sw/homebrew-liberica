cask 'liberica-jre19' do
	desc "100% open-source Java implementation"
	version '19.0.1,11'

	if Hardware::CPU.intel?
		sha256 'cd0371d7e59077322ea7f23b059d67bca882276a93990ffb1632d04ef8dbe8f6'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jre19.0.1%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre19.0.1+11-macos-amd64.pkg'
	else
		sha256 '3883fc51830dc5b22f5b0ad25b6e3170bbcfc4a5ebc70f66142776d3ca5d4c98'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jre19.0.1%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre19.0.1+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre19'

end

