cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21,37'

	if Hardware::CPU.intel?
		sha256 'a5bf772466bdde75d7994e3be1549ac702902f9f8c4464f5dad52bcbc6ab68d8'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jre21%2B37-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21+37-macos-amd64-full.pkg'
	else
		sha256 'ca5d0350b9d7bfb9eb96a3109ab6e268528276eec0e87798a89e21c0aeb8f580'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jre21%2B37-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21+37-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

