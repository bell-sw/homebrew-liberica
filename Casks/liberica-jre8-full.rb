cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,482'

	if Hardware::CPU.intel?
		sha256 '879a6805d08070eca3346a9a1024bd4affa3bbd749384854a199c4657154f590'

		url "https://download.bell-sw.com/java/8u482%2B10/bellsoft-jre8u482%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u482+10-macos-amd64-full.pkg'
	else
		sha256 'ca12917bd54e5a019367a844c13047f08020a626de6bd3251f2cdcdf136df850'

		url "https://download.bell-sw.com/java/8u482%2B10/bellsoft-jre8u482%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u482+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

