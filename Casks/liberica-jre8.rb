cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,362'

	if Hardware::CPU.intel?
		sha256 'c3cd74df7dad99a1085e596d2dfddc769601344438b0b8ab3922de9bc9e16135'

		url "https://download.bell-sw.com/java/8u362%2B9/bellsoft-jre8u362%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u362+9-macos-amd64.pkg'
	else
		sha256 '8ec16b1f9d13c66f70deca04221a0f18ef9ae6ec5e48bd031afe1f5c9c4bf581'

		url "https://download.bell-sw.com/java/8u362%2B9/bellsoft-jre8u362%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u362+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

