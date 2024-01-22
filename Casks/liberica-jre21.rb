cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.2,14'

	if Hardware::CPU.intel?
		sha256 '1556ac5ce661d2855c2f9a49d86c7953d334a47a448fa6d7fe6535a02249dfeb'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jre21.0.2%2B14-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.2+14-macos-amd64.pkg'
	else
		sha256 '445cf2fcfbaf7924e31c7527456faf6aec3d6b23705d0ab4fed0d6fe8f6e7f56'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jre21.0.2%2B14-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.2+14-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

