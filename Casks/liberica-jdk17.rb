cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.5,8'

	if Hardware::CPU.intel?
		sha256 '3a6dc7b411c6f4e0f28d93579ab6c11b5997b7150d16540d5f234ba4872a1d80'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jdk17.0.5%2B8-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.5+8-macos-amd64.pkg'
	else
		sha256 'c50ce47423e4b25aab820cf13e4a90371e17fe1dcc45be6d23b69d0ea720eec7'

		url "https://download.bell-sw.com/java/17.0.5%2B8/bellsoft-jdk17.0.5%2B8-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.5+8-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

