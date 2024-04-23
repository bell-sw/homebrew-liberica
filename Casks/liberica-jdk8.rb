cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,412'

	if Hardware::CPU.intel?
		sha256 'f1e77169baab29009db6abb6a58e579a31e33214985e2376c69f76dec1183ea2'

		url "https://download.bell-sw.com/java/8u412%2B9/bellsoft-jdk8u412%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u412+9-macos-amd64.pkg'
	else
		sha256 'b96fe88c068763aa28e808d008419d03849b5e06dfa12a4b2a7f9f6d7550d0c7'

		url "https://download.bell-sw.com/java/8u412%2B9/bellsoft-jdk8u412%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u412+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

