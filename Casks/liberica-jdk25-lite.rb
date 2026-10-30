cask 'liberica-jdk25-lite' do
	desc "100% open-source Java implementation"
	version '25.0.5.0.3,5'

	if Hardware::CPU.intel?
		sha256 'a6ab980bef5e3af4e52999b4fc1e3bd014c79d6f348b3da8bbfae75ed6958957'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jdk25.0.5.0.3%2B5-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.5.0.3+5-macos-amd64-lite.pkg'
	else
		sha256 '5d377c1cdd614b297c782321883e76c27ebfa64dbd8d74f7f78dd1dc18b755ad'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jdk25.0.5.0.3%2B5-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk25.0.5.0.3+5-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-lite'

end

