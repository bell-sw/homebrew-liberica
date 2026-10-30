cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.33.0.3,7'

	if Hardware::CPU.intel?
		sha256 'c5d275f9d1c6be3527c9764b7cfac8c469c6d1c93ff5e8ac545cd1717312e88f'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jre11.0.33.0.3%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.33.0.3+7-macos-amd64-full.pkg'
	else
		sha256 'efd0917a34dda81ed663c7c2417fa3289377b991ab90766852b79d3fbaa9ebd3'

		url "https://download.bell-sw.com/java/11.0.33.0.3%2B7/bellsoft-jre11.0.33.0.3%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.33.0.3+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

