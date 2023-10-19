cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.9,11'

	if Hardware::CPU.intel?
		sha256 '1f5ba83a974052cd31924cfe6dcd0f151ba99d37fa7ba3b34e1f8f030e6042a9'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jdk17.0.9%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.9+11-macos-amd64-lite.pkg'
	else
		sha256 '05b830b1d99a5dbb2bf30cede910aaa44d842bcc7726e75a75e86f6a13c46d35'

		url "https://download.bell-sw.com/java/17.0.9%2B11/bellsoft-jdk17.0.9%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.9+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

