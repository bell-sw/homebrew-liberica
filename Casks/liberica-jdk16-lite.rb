cask 'liberica-jdk16-lite' do
	desc "100% open-source Java implementation"
	version '16.0.2,7'

	if Hardware::CPU.intel?
		sha256 '9721afdae56d9abd846e3d68223f2b4f6e5ef99de15426119ec7790108926d0a'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jdk16.0.2%2B7-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk16.0.2+7-macos-amd64-lite.pkg'
	else
		sha256 '90b4eb32fdcc0e417f4f4f00ff3c75e5694f28c461b3b9a760cf12f5a694c77e'

		url "https://download.bell-sw.com/java/16.0.2%2B7/bellsoft-jdk16.0.2%2B7-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk16.0.2+7-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 16'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk16-lite'

end

