cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.3,7'

	if Hardware::CPU.intel?
		sha256 'caa074efa3516361d4f49de20cdee705477d08e453aaf6c1c3c1b8404bac23b0'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.3+7-macos-amd64.pkg'
	else
		sha256 '2e4b0fec58082df19750c148d9edc8a230b3bdcf921a6b5ec79a9cac38225761'

		url "https://download.bell-sw.com/java/17.0.3%2B7/bellsoft-jdk17.0.3%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.3+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

