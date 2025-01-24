cask 'liberica-jdk17' do
	desc "100% open-source Java implementation"
	version '17.0.14,10'

	if Hardware::CPU.intel?
		sha256 '8b0cddd8dcd092fadf90fcf7c19c7e53b1be7ab69fe6471c7996a6cee64049ca'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jdk17.0.14%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jdk17.0.14+10-macos-amd64.pkg'
	else
		sha256 '17f4e452909dedc6408c121567a0750a3a2e1a687198e9d7745d027889c346a3'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jdk17.0.14%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk17.0.14+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17'

end

