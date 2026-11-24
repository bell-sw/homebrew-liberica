cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.33.1,5'

	if Hardware::CPU.intel?
		sha256 'bfa64010786965390c1966eec259f4ba851d29cb337fad0286392da7fdfd78d2'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jdk11.0.33.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.33.1+5-macos-amd64-full.pkg'
	else
		sha256 '04017d61b3e8cb6d784d419add272865d34689efaa2352e5633b8c999ec0a177'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jdk11.0.33.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.33.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

