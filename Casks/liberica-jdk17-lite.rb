cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.20,10'

	if Hardware::CPU.intel?
		sha256 '82bedee6142ee222e092e229b3aa257e3cebcd869456a193a87b283130f50326'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jdk17.0.20%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.20+10-macos-amd64-lite.pkg'
	else
		sha256 'ff6d18c8199063d60bee31428d23c3214afcd8bd3905745c820e0c0f06cef767'

		url "https://download.bell-sw.com/java/17.0.20%2B10/bellsoft-jdk17.0.20%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.20+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

