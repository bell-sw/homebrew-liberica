cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.20.1,1'

	if Hardware::CPU.intel?
		sha256 '74565ca3f4a362db2141a9a96cafff4ff43d20e247c5dd5afb699373486e7dd2'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jdk17.0.20.1%2B1-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.20.1+1-macos-amd64-lite.pkg'
	else
		sha256 '220418938a06556cdfb63d8d9ddd5991f68a16df9ee66af8833421796afd816a'

		url "https://download.bell-sw.com/java/17.0.20.1%2B1/bellsoft-jdk17.0.20.1%2B1-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.20.1+1-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

