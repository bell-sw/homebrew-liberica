cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.32,11'

	if Hardware::CPU.intel?
		sha256 '1e8c8eeca1cfd9a39cc30791ffc1564b23209d3ae9c16da4ecc2c03c448cdd9f'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jre11.0.32%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.32+11-macos-amd64-full.pkg'
	else
		sha256 'dd2f9df1c99e7c52e71dadc27e0164356fca0df8445709e1aa3519b7e2dfc596'

		url "https://download.bell-sw.com/java/11.0.32%2B11/bellsoft-jre11.0.32%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.32+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

