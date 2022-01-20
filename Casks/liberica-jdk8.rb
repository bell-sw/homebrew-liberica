cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,322'

	if Hardware::CPU.intel?
		sha256 'd962ab25d39cae4b0fa398b94a73be6bfc5058d4621e5088072457f27c612541'

		url "https://download.bell-sw.com/java/8u322%2B6/bellsoft-jdk8u322%2B6-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u322+6-macos-amd64.pkg'
	else
		sha256 'a7267b71502a22be416a9b2cf2a583588068352ebe0ead98079fc7e15bef0493'

		url "https://download.bell-sw.com/java/8u322%2B6/bellsoft-jdk8u322%2B6-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u322+6-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

