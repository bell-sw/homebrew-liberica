cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.27,9'

	if Hardware::CPU.intel?
		sha256 'c0da8f349c6343c25b3b6773a443a9b483a1849388e711d2135c30346ef826ea'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jre11.0.27%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.27+9-macos-amd64.pkg'
	else
		sha256 '7deb3dd11bd559e15484cdd6e2f6b770607124b150b766aaea6c13c16c2a5919'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jre11.0.27%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.27+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

