cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.13.0.3,5'

	if Hardware::CPU.intel?
		sha256 '51690bf33eb16e1e26dd16cc9282649459cac16215d2a906efbc2d4c109c363c'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jre21.0.13.0.3%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.13.0.3+5-macos-amd64.pkg'
	else
		sha256 '11312d69619791288b7dc948c584ea6315cdc74ad7d4d3b48bd154aabaf667fa'

		url "https://download.bell-sw.com/java/21.0.13.0.3%2B5/bellsoft-jre21.0.13.0.3%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.13.0.3+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

