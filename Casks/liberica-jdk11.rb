cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.21,10'

	if Hardware::CPU.intel?
		sha256 'a463163dae846e0448e6135295fea2ad1846c2b503e38301d07c22519948fe27'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jdk11.0.21%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.21+10-macos-amd64.pkg'
	else
		sha256 '7e0bee61ad9e4686eb79c86bdff023e636dd79ee50b04c2a2d3a2fb4b438ee13'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jdk11.0.21%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.21+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

