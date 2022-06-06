cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,9'

	if Hardware::CPU.intel?
		sha256 '10b3bed04ac1273e78da9132296ee0c6847d728a42c1fe79b58f74f27997ea4c'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jre11.0.15.1%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.15.1+9-macos-amd64.pkg'
	else
		sha256 '5a458a9246f568e9999f3ec2a72f3f88494ff16fe961f9f9cdc218d197dc9036'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jre11.0.15.1%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.15.1+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

