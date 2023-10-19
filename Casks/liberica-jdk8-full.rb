cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,392'

	if Hardware::CPU.intel?
		sha256 'c3b762f94b5139568baecbd3f2bf2ccfedd40ab4d676061a70a70f8c28374519'

		url "https://download.bell-sw.com/java/8u392%2B9/bellsoft-jdk8u392%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u392+9-macos-amd64-full.pkg'
	else
		sha256 'a50eaf5803b1488f6c633ce58bd410380b148fd9effbd8e69cb2591099d16c86'

		url "https://download.bell-sw.com/java/8u392%2B9/bellsoft-jdk8u392%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u392+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

