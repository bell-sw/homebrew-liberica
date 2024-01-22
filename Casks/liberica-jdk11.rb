cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.22,12'

	if Hardware::CPU.intel?
		sha256 '4a31c641cab1667a8576523528eb2ab7d108135bd8d197fca8e770983c03adf2'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jdk11.0.22%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.22+12-macos-amd64.pkg'
	else
		sha256 '9f8a9d219e1b861a78e2af0c35d2911ba64e037f9d5fa206d179ad1911c66d4b'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jdk11.0.22%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.22+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

