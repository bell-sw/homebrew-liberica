cask 'liberica-jdk16-full' do
	desc "100% open-source Java implementation"
	version '16.0.2,7'

	if Hardware::CPU.intel?
		sha256 '363fdfd07ac485f8231d7b38851e2135915e790da9beefa6420c09a8b0cb158d'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jdk16.0.2%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk16.0.2+7-macos-amd64-full.pkg'
	else
		sha256 '5ee7245f7cfcb4415615c17d342ccf213181688dfa1cd2a7f7f0698f9015cfbe'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jdk16.0.2%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk16.0.2+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 16'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk16-full'

end

