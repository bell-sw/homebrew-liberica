cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.33.1,5'

	if Hardware::CPU.intel?
		sha256 '8b9cde1ee8aeb9759e6e4d4686f564cae6357b57ce581548cb5a4335661f5280'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jdk11.0.33.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.33.1+5-macos-amd64.pkg'
	else
		sha256 '235c44d89e135ad9f1b71c9f84a6386a104cb156d900614aa03518e67b29c657'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jdk11.0.33.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.33.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

