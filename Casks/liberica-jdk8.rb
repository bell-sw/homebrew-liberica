cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,352'

	if Hardware::CPU.intel?
		sha256 '9898851d89251072e55b7cd1cbbd7670f21631e8b0db2135e29d3110ad9ace11'

		url "https://download.bell-sw.com/java/8u352%2B8/bellsoft-jdk8u352%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u352+8-macos-amd64.pkg'
	else
		sha256 '79ccee36b1823fafcd302fcf712efbe14ae8bb32d6d2d15a3fae3bc960b50a66'

		url "https://download.bell-sw.com/java/8u352%2B8/bellsoft-jdk8u352%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u352+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

