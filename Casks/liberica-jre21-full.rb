cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.10,10'

	if Hardware::CPU.intel?
		sha256 '493756dd3329c5a2f4fdbb5d24494ff65977c1e0d28703a0ed353ae63e27d435'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jre21.0.10%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.10+10-macos-amd64-full.pkg'
	else
		sha256 'd2f817d04c255a26a18e29f0545340f20ca71789b0cad1d393458497569a1b6d'

		url "https://download.bell-sw.com/java/21.0.10%2B10/bellsoft-jre21.0.10%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.10+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

