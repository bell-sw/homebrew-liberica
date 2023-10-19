cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,392'

	if Hardware::CPU.intel?
		sha256 '996db8e2fce1fb3a21df2e8bae2d79b1705998b33f24eb07af4d12b4952f4d84'

		url "https://download.bell-sw.com/java/8u392%2B9/bellsoft-jdk8u392%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u392+9-macos-amd64.pkg'
	else
		sha256 '0429522ea8a594e113cef183ca4459bfb2721a5ae4065b4f1d002730f2e02108'

		url "https://download.bell-sw.com/java/8u392%2B9/bellsoft-jdk8u392%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u392+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

