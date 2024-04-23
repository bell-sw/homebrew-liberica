cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.23,10'

	if Hardware::CPU.intel?
		sha256 '33f61dbbe8f669d8f44167138fb5b0985967d684cac4ed6080ba4f04410ab3e2'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jdk11.0.23%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.23+10-macos-amd64-lite.pkg'
	else
		sha256 '1e4b12b4e7f184e2e6f7ff95585893050c67771b5e515c953b12d25a7921d449'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jdk11.0.23%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.23+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

