cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.32.1,1'

	if Hardware::CPU.intel?
		sha256 'a62d7fa401b610a83c7db9a7aa429283d0187e31b67318891c084883b008ef4c'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jdk11.0.32.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.32.1+1-macos-amd64.pkg'
	else
		sha256 'eb59a29e9a8c6adce21af31e21b1526c1986867f8b83d9f1231c283d67233304'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jdk11.0.32.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.32.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

