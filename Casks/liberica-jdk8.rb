cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,442'

	if Hardware::CPU.intel?
		sha256 '5d542e4fafbd17946996a9b9ba766cad4bcdbbbe9e798b17a6f4a2456e5e3821'

		url "https://download.bell-sw.com/java/8u442%2B7/bellsoft-jdk8u442%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u442+7-macos-amd64.pkg'
	else
		sha256 '131e52558cfd5d8f25f87ae389168c1ea8c750c3b5aefa8c7a1328900ef03bee'

		url "https://download.bell-sw.com/java/8u442%2B7/bellsoft-jdk8u442%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u442+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

