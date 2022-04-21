cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.15,10'

	if Hardware::CPU.intel?
		sha256 '947e0504fe5f0b9cf40765f2086c92721863ab94d44de0d318648799dcc544e0'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jdk11.0.15%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.15+10-macos-amd64.pkg'
	else
		sha256 '7884e5de15f66e71b3eab2162d219616ff531806b52a0f05743116b0d83428a9'

		url "https://download.bell-sw.com/java/11.0.15%2B10/bellsoft-jdk11.0.15%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.15+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

