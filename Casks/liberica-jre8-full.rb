cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,322'

	if Hardware::CPU.intel?
		sha256 '34cb3766b67a8f7abb3aef217dfb7961035c2555dcd21c257be2a4023a67ba8d'

		url "https://download.bell-sw.com/java/8u322%2B6/bellsoft-jre8u322%2B6-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u322+6-macos-amd64-full.pkg'
	else
		sha256 '793dd3e51c42f71494e86cacbd51314594bb1e571e5c376e754bd100357f265b'

		url "https://download.bell-sw.com/java/8u322%2B6/bellsoft-jre8u322%2B6-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u322+6-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

