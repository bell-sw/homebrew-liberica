cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.13.0.3,5'

	if Hardware::CPU.intel?
		sha256 'a7f5d0e9dc86ed48058db1a1655ab6097b75bda485fad96bfbf4b19105857e07'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jdk21.0.13.0.3%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.13.0.3+5-macos-amd64-full.pkg'
	else
		sha256 'a1ac960bbd45244de146e07419b444c8bb0ec918541e5accf0fcc061886c2240'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jdk21.0.13.0.3%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.13.0.3+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

