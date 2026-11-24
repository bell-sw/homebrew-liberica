cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.13.1,5'

	if Hardware::CPU.intel?
		sha256 '7436cb46624e2cbad62edd24634ff96c4a8150319e06252afe00f60f914e4ad2'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jre21.0.13.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.13.1+5-macos-amd64-full.pkg'
	else
		sha256 '6ec6cb914a348db3926a07ddf4bf5b8525b38d76bec63b707bd7962b4e7307dc'

		url "https://download.bell-sw.com/java/21.0.13.1%2B5/bellsoft-jre21.0.13.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.13.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

