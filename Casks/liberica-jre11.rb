cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.33.1,5'

	if Hardware::CPU.intel?
		sha256 '61d0d5a1f379e621001591fbbf1303217975c8730a0897256ecd1bd80ccfee83'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jre11.0.33.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.33.1+5-macos-amd64.pkg'
	else
		sha256 'c6fe456fa29846aa39b41f82740067d703248d9905400045b39dd91ad03e6cc2'

		url "https://download.bell-sw.com/java/11.0.33.1%2B5/bellsoft-jre11.0.33.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.33.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

