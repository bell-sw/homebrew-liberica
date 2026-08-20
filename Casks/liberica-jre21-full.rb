cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.12.1,1'

	if Hardware::CPU.intel?
		sha256 '888e588df9426731ee7463e848b50df354522524441f9125a9d0e061cf11e4b8'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jre21.0.12.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.12.1+1-macos-amd64-full.pkg'
	else
		sha256 '5aa087fd3e7c9521d49002c80599b91c1e0daa1ef76ca59d684feade11cf49e0'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jre21.0.12.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.12.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

