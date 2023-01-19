cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.6,10'

	if Hardware::CPU.intel?
		sha256 '609cabcf2c6c6bd97df0361e2423e6bc58244e2a1d1665ee45fa19b5deb35f7a'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jre17.0.6%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.6+10-macos-amd64-full.pkg'
	else
		sha256 '23939b4353355556bcc20d841fad424545ef257a71b29253073d1910b140c7f5'

		url "https://download.bell-sw.com/java/17.0.6%2B10/bellsoft-jre17.0.6%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.6+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

