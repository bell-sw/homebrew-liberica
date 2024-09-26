cask 'liberica-jdk23-full' do
	desc "100% open-source Java implementation"
	version '23,38'

	if Hardware::CPU.intel?
		sha256 '7fdfe1e587fb0fc8c3a524b80553fa458794aa0520444606959a6f885429d120'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jdk23%2B38-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk23+38-macos-amd64-full.pkg'
	else
		sha256 'b3b84c2b0be12073ee645b99f7ee400a9a38f7ed7c42b6ed2acbc085f1b8fda1'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jdk23%2B38-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk23+38-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk23-full'

end

