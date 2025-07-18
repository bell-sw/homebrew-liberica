cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.28,12'

	if Hardware::CPU.intel?
		sha256 '8e1c3f75fe129d41f156ccbed3df11b79e33fc5b1fe016bd968b6c66d40881a5'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jdk11.0.28%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.28+12-macos-amd64-lite.pkg'
	else
		sha256 '1c23e261163f058918c9d1933e1e4a7b7047dba27df0f1cb1cf91bb45ed78d91'

		url "https://download.bell-sw.com/java/11.0.28%2B12/bellsoft-jdk11.0.28%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.28+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

