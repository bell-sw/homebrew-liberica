cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.1,12'

	if Hardware::CPU.intel?
		sha256 '57a91bb14e711d7dee93af9eb143fa2681e6c4dbcf8fc149f2d43e15b94dff0b'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jre17.0.1%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.1+12-macos-amd64-full.pkg'
	else
		sha256 '65620093ef82659bbed13a7fa03db825d0522db170dc15f961af6dcaa0d82a01'

		url "https://download.bell-sw.com/java/17.0.1%2B12/bellsoft-jre17.0.1%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.1+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

