cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,342'

	if Hardware::CPU.intel?
		sha256 '5c6add4ea789d3b807e99acee51433f05d43dea029f89ec16cf3325b70cb936f'

		url "https://download.bell-sw.com/java/8u342%2B7/bellsoft-jdk8u342%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u342+7-macos-amd64.pkg'
	else
		sha256 'f69c77198637fdb0eebcf4a7f6549d99e895158b8a0e1f67a45fe1de282344a4'

		url "https://download.bell-sw.com/java/8u342%2B7/bellsoft-jdk8u342%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u342+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

