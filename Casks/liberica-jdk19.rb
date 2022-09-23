cask 'liberica-jdk19' do
	desc "100% open-source Java implementation"
	version '19,37'

	if Hardware::CPU.intel?
		sha256 '439ee0afac5e261a3732ed282e4d232c27f69701aa35d347ca3afcb805ce9a8e'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jdk19%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jdk19+37-macos-amd64.pkg'
	else
		sha256 'c3377aff372d7d43a6cc5b07ce52757762d44612c2b78810489a74de95d5c2cb'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jdk19%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk19+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk19'

end

