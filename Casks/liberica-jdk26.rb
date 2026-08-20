cask 'liberica-jdk26' do
	desc "100% open-source Java implementation"
	version '26.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 '2209428472480df1cdc837b8bf4a6acf6dace6ff7e7effa7ae9b4268d7ea5f48'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jdk26.0.2.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk26.0.2.1+1-macos-amd64.pkg'
	else
		sha256 '7b799ec2f1a22c29f55425cf60ab89f8283662be3f60bab8e4e0ed410931e40a'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jdk26.0.2.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk26.0.2.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk26'

end

