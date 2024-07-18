cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,422'

	if Hardware::CPU.intel?
		sha256 '3c67e8ecfff832005730801e40effa6e16282691375de82e60f4dd40ab20eb18'

		url "https://download.bell-sw.com/java/8u422%2B6/bellsoft-jdk8u422%2B6-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u422+6-macos-amd64.pkg'
	else
		sha256 '6c35b79bc0fabcbd33e4bea2bc3be1248e480e12db58fb0c746668b30a45a769'

		url "https://download.bell-sw.com/java/8u422%2B6/bellsoft-jdk8u422%2B6-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u422+6-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

