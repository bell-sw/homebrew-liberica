cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,422'

	if Hardware::CPU.intel?
		sha256 '8d097369e1380e1124d4b9f637c492f74dfb06c017f3f60c1477b6c81f3ff779'

		url "https://download.bell-sw.com/java/8u422%2B6/bellsoft-jdk8u422%2B6-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u422+6-macos-amd64-full.pkg'
	else
		sha256 '3d4b5ece80e91b11fb1fc5f0a404bc58cefc190d9037db8c567848adcce9ce81'

		url "https://download.bell-sw.com/java/8u422%2B6/bellsoft-jdk8u422%2B6-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u422+6-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

