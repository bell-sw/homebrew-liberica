cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.16.1,1'

	if Hardware::CPU.intel?
		sha256 '6e3c2f7554af1209d72d0d180c58577192a24d09b3ca7f8775d303e056e7e7ea'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jre11.0.16.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.16.1+1-macos-amd64-full.pkg'
	else
		sha256 'eb00d40f5455e3937f8c1833beeac8ef13f30bbeab31379ec6bbeedc57aa21c7'

		url "https://download.bell-sw.com/java/11.0.16.1%2B1/bellsoft-jre11.0.16.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.16.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

