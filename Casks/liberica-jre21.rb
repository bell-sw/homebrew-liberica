cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.4,9'

	if Hardware::CPU.intel?
		sha256 'bb657c0b68fef6214904e0e01b9ce989ea576ab538fd9c12319db59ce3a63057'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jre21.0.4%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.4+9-macos-amd64.pkg'
	else
		sha256 '4eced7a6caef92db7411b249070958ed877da20935f4cd2e3af3601c4bf58519'

		url "https://download.bell-sw.com/java/21.0.4%2B9/bellsoft-jre21.0.4%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.4+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

