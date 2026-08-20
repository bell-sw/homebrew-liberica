cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.32.1,1'

	if Hardware::CPU.intel?
		sha256 '70624600cf03073c17d86b2dbb8728102619a7cc684fa0ee11dc3ec5eab40ce9'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jdk11.0.32.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.32.1+1-macos-amd64-full.pkg'
	else
		sha256 'fc81bff2b3deedee30ca3b527ece68608c574cafe75c85cb28d81a8c4ded5538'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jdk11.0.32.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.32.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

