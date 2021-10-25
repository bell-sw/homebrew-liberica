cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.13,8'

	if Hardware::CPU.intel?
		sha256 '35f9eff04508110a812548d4baa957e3a2e27753b0b2363fc411918648a070aa'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jre11.0.13%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.13+8-macos-amd64-full.pkg'
	else
		sha256 '31909197537d359ab3df5e8d08e0f33563e120095c4ab916249be24845e5f455'

		url "https://download.bell-sw.com/java/11.0.13%2B8/bellsoft-jre11.0.13%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.13+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

