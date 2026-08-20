cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,504'

	if Hardware::CPU.intel?
		sha256 '362a4c941a64e63290c46433e5ee5bf021d1c1f74465cee4da9ea0beb5e6927e'

		url "https://download.bell-sw.com/java/8u504%2B1/bellsoft-jre8u504%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u504+1-macos-amd64-full.pkg'
	else
		sha256 'a4c5b355fb7b4cc7a612ef0c22d9ce31bdf648b956d489af06205efa763862c9'

		url "https://download.bell-sw.com/java/8u504%2B1/bellsoft-jre8u504%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u504+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

