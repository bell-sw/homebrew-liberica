cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.6,10'

	if Hardware::CPU.intel?
		sha256 '4a1a92c5022bde075b72d7c786906c9307acbb8918920ca0e0e830d763328f3c'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jre21.0.6%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.6+10-macos-amd64-full.pkg'
	else
		sha256 'e0240a44f5955a157ff5c225edb198a593c6f20e5dc54842544373a31aef6ed4'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jre21.0.6%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.6+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

