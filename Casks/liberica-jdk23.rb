cask 'liberica-jdk23' do
	desc "100% open-source Java implementation"
	version '23.0.1,13'

	if Hardware::CPU.intel?
		sha256 '9c32e4880723ddacdcd937d2d803bb1f24336e88514c4affd5509270dfb17717'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jdk23.0.1%2B13-macos-amd64.pkg"
  		pkg 'bellsoft-jdk23.0.1+13-macos-amd64.pkg'
	else
		sha256 '686d55a5303514f84cfd18ceeaaedcd7161ae774fbe448adb697d80fbe2b4809'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jdk23.0.1%2B13-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk23.0.1+13-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk23'

end

