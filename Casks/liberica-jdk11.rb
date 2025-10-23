cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.29,10'

	if Hardware::CPU.intel?
		sha256 'e1bc37ad21950cc9875be2b7c1de402ef8bf730a102713f7d1f5f058d4a89530'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jdk11.0.29%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.29+10-macos-amd64.pkg'
	else
		sha256 '75feb3671b3c6d14a98143cb0c61de6efa3aaab5fb89bc48ae51be569cea2c2c'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jdk11.0.29%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.29+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

