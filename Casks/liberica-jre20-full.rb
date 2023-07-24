cask 'liberica-jre20-full' do
	desc "100% open-source Java implementation"
	version '20.0.2,10'

	if Hardware::CPU.intel?
		sha256 '0ea49238a4526be102e84c1b2f57aa9633d6412bcee42169c5153e0650c9a9af'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jre20.0.2%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre20.0.2+10-macos-amd64-full.pkg'
	else
		sha256 'a96a1e9499ac2bc087647351fd7068aca83c417d124e70d0ada628b9b7b1756d'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jre20.0.2%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre20.0.2+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre20-full'

end

