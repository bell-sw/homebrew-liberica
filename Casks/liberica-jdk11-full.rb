cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.24,9'

	if Hardware::CPU.intel?
		sha256 '5e92946d5fc8128a696baddcb2d4c2082a3feff6acfa49aa23c6c530cf811b96'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jdk11.0.24%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.24+9-macos-amd64-full.pkg'
	else
		sha256 '4a5f41f8eeb95f1ad657965a9d54791b3e3479d89a9e9f0406e506a834a8d050'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jdk11.0.24%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.24+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

