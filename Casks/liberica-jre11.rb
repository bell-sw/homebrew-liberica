cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.24,9'

	if Hardware::CPU.intel?
		sha256 'da4fc62dd97bc57a323fd8c2f452f2406f35094509212558a25e357f9e48d3b2'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jre11.0.24%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.24+9-macos-amd64.pkg'
	else
		sha256 '108a1501245901582d3340efc08293886d9e4d1af290cb675d3fbd8c9ac9e8d5'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jre11.0.24%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.24+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

