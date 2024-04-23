cask 'liberica-jdk22' do
	desc "100% open-source Java implementation"
	version '22.0.1,10'

	if Hardware::CPU.intel?
		sha256 'a1c8f850560d95cb57fb8318dedb694a138bcb5e6c0bdfcf87197ec31379e7d3'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jdk22.0.1%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk22.0.1+10-macos-amd64.pkg'
	else
		sha256 'f267cc9092813ead544da6a43d5df912572069d5043b201f8d01b07bffc5553d'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jdk22.0.1%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk22.0.1+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk22'

end

