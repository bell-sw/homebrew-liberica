cask 'liberica-jre18-full' do
	desc "100% open-source Java implementation"
	version '18.0.1.1,2'

	if Hardware::CPU.intel?
		sha256 '421846382c7cb5ab9f4a2973a68163354f50a1e56098280b91f9cc0337f33dbb'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jre18.0.1.1%2B2-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre18.0.1.1+2-macos-amd64-full.pkg'
	else
		sha256 '8cb62ca7b4b80e59587a3471c588187c498806172a153cef767ceea8997a6b1b'

		url "https://download.bell-sw.com/java/18.0.1.1%2B2/bellsoft-jre18.0.1.1%2B2-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre18.0.1.1+2-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18-full'

end

