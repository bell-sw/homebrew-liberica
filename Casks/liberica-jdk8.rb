cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,482'

	if Hardware::CPU.intel?
		sha256 '5943635915c800cc0e26f09c88bff9c962e343080359aaf6d8750f0b9ff5f1fd'

		url "https://download.bell-sw.com/java/8u482%2B10/bellsoft-jdk8u482%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u482+10-macos-amd64.pkg'
	else
		sha256 '8ab23303788728186c53116f36cb629844ec2d6f17a48c1d738fbd37d7a01c0b'

		url "https://download.bell-sw.com/java/8u482%2B10/bellsoft-jdk8u482%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u482+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

