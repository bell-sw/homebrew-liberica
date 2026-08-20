cask 'liberica-jdk26-lite' do
	desc "100% open-source Java implementation"
	version '26.0.2.1,1'

	if Hardware::CPU.intel?
		sha256 '9add33f3a70a747d2a5fc421e4565e233df79de4f10bf8c8cfc6383bd8cbb64f'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jdk26.0.2.1%2B1-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk26.0.2.1+1-macos-amd64-lite.pkg'
	else
		sha256 '159ed5ff583d158c7ae1af377fa410393e179215915ba06a99a17d853305e9e2'

		url "https://download.bell-sw.com/java/26.0.2.1%2B1/bellsoft-jdk26.0.2.1%2B1-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk26.0.2.1+1-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk26-lite'

end

