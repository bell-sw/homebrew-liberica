cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.20.1,1'

	if Hardware::CPU.intel?
		sha256 'b3026e4d983b894ee1913de47c5224f5c3855e7972a4b76a4f3afa81f4d67f6c'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jre17.0.20.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.20.1+1-macos-amd64.pkg'
	else
		sha256 '8b6c48c3238fdb1d13c4c7935accb72b317538f2e4bc2b0bc524cdd8459a3a51'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jre17.0.20.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.20.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

