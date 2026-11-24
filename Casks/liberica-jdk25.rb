cask 'liberica-jdk25' do
	desc "100% open-source Java implementation"
	version '25.0.5.1,5'

	if Hardware::CPU.intel?
		sha256 '49597809ecfe31b05119a5d0d4ad336b7f410b36de980875a8458f2cffcf719c'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jdk25.0.5.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jdk25.0.5.1+5-macos-amd64.pkg'
	else
		sha256 '698cd6f3ec340c711ec0c687279cce5870352afa606f97b7eae40abc7b58b6f4'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jdk25.0.5.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk25.0.5.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25'

end

