cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.12,10'

	if Hardware::CPU.intel?
		sha256 'b71c353ed8d14523ea8f01ee542fb93cf433902de9e7d56addc31e7a6e12e53d'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jre21.0.12%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.12+10-macos-amd64-full.pkg'
	else
		sha256 'e1c21693563af5d6a98090abc51b0b4f96db6e5859f97ca33faa146f25674bd2'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jre21.0.12%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.12+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

