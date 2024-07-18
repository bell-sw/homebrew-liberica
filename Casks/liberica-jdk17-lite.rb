cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.12,10'

	if Hardware::CPU.intel?
		sha256 '91b683f3b8df1323c1f1c616b03e9561f4c190a5a971dc311250995f5d3e1746'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jdk17.0.12%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.12+10-macos-amd64-lite.pkg'
	else
		sha256 '196ae2026f1cf91e46b9f3f647f16df299575a31f77016bd2ec070ca89a524b0'

		url "https://download.bell-sw.com/java/17.0.12%2B10/bellsoft-jdk17.0.12%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.12+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

