cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.17,7'

	if Hardware::CPU.intel?
		sha256 '1d0aa043e4d6404571c81b18479c6065eb1f93c1d35864b26858fa8ff05570e1'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jdk11.0.17%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.17+7-macos-amd64-full.pkg'
	else
		sha256 'da6249034aca57d99d7eb989bec7c27f1dee0c63b0b7c621d871e63382726d6a'

		url "https://download.bell-sw.com/java/11.0.17%2B7/bellsoft-jdk11.0.17%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.17+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

