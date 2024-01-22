cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.10,13'

	if Hardware::CPU.intel?
		sha256 '77247d87fa4f338540538b3ce4c8b6bd5b10208a09345512b011163b6b790624'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jdk17.0.10%2B13-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.10+13-macos-amd64-full.pkg'
	else
		sha256 '5084842e054c7c9827f044fadee14c8c0dc79b205c6cbfeb691da5ade0a5b26f'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jdk17.0.10%2B13-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.10+13-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

