cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,412'

	if Hardware::CPU.intel?
		sha256 'd3335fc6dad62125b747fe8ef108238ae018e9ab6ab0522813192bcff76d192b'

		url "https://download.bell-sw.com/java/8u412%2B9/bellsoft-jre8u412%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u412+9-macos-amd64.pkg'
	else
		sha256 '15c9fede42749e1e3d62f51105183675fbcb25e35f74a867c725b7fab48eda92'

		url "https://download.bell-sw.com/java/8u412%2B9/bellsoft-jre8u412%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u412+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

