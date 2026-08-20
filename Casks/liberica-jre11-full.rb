cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.32.1,1'

	if Hardware::CPU.intel?
		sha256 '268c1a6380d34a6a74d9b8d5f2884f5bc89fded88b203e0c8da8bed75cc37ba1'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jre11.0.32.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.32.1+1-macos-amd64-full.pkg'
	else
		sha256 'e86b4151c623c6384910ba800eac3e362f66ee688dc81aee8d3b14af3ea2d751'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jre11.0.32.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.32.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

