cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.20,8'

	if Hardware::CPU.intel?
		sha256 'a2f027d944b6c00c518ab14ca1f3de26c359f8f000f983d22ade6a8b053a2e3c'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jdk11.0.20%2B8-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.20+8-macos-amd64-lite.pkg'
	else
		sha256 '8e32e6c5cdc4aea66c67366c335b1de603e3f177112f6f939b5eb16dfe259959'

		url "https://download.bell-sw.com/java/11.0.20%2B8/bellsoft-jdk11.0.20%2B8-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.20+8-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

