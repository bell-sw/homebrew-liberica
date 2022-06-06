cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,2'

	if Hardware::CPU.intel?
		sha256 'b3f833a8982fa36c3e42a61d2f30e0d3386ac7796a4219bf457f5fd8ec474290'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jre11.0.15.1%2B2-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.15.1+2-macos-amd64-full.pkg'
	else
		sha256 '7b6da8fc7b8bab328b01793c0ef1e9a6f6954eff88b6a415638dfd22eafd09a5'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jre11.0.15.1%2B2-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.15.1+2-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

