cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.27,9'

	if Hardware::CPU.intel?
		sha256 'de5ad7592590a7e0fe2b327b3939a9e0d001a032b634369fcc64e38de72eb050'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jre11.0.27%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.27+9-macos-amd64-full.pkg'
	else
		sha256 '23eef4300e86a44960af3ab19eb902ad141ce96c8efd34028506cde1e16dc50e'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jre11.0.27%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.27+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

