cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.33.1,5'

	if Hardware::CPU.intel?
		sha256 'b5142c1fa92e62a0d9654d90b7696321a516a8e5086213c1932af1649889eaf3'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jdk11.0.33.1%2B5-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.33.1+5-macos-amd64-lite.pkg'
	else
		sha256 '750eb6856d69e7d2b56da0ca2362112a03aca57346a473c505d6b392221fa5e2'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jdk11.0.33.1%2B5-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.33.1+5-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

