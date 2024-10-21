cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.13,12'

	if Hardware::CPU.intel?
		sha256 '44aba9fe762b3ace30ae9426f296c83827f123f2687ecfc12133b567468c9fd8'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jre17.0.13%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.13+12-macos-amd64.pkg'
	else
		sha256 '093754e028c4beedfda69c6072c50f79a12f72bc171a14eb1dc367617f8cb00c'

		url "https://download.bell-sw.com/java/17.0.13%2B12/bellsoft-jre17.0.13%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.13+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

