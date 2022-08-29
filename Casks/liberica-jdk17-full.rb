cask 'liberica-jdk17-full' do
	desc "100% open-source Java implementation"
	version '17.0.4.1,1'

	if Hardware::CPU.intel?
		sha256 'e2307ffbdfab09c9202546f12ff756a8ec694d0645c54231b67c1bb2a6c17744'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jdk17.0.4.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk17.0.4.1+1-macos-amd64-full.pkg'
	else
		sha256 '08c0095e52759560cdc261d00574429ae57dad285bc93eac25ca6f25486d6a58'

		url "https://download.bell-sw.com/java/17.0.4.1%2B1/bellsoft-jdk17.0.4.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk17.0.4.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-full'

end

