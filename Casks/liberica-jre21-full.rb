cask 'liberica-jre21-full' do
	desc "100% open-source Java implementation"
	version '21.0.11,11'

	if Hardware::CPU.intel?
		sha256 '9fc32cc33a6e81086a51ad0baef6e8f0e0c0cae89d5f054ddbd706f299004f4f'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jre21.0.11%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre21.0.11+11-macos-amd64-full.pkg'
	else
		sha256 'a26d70c0464cfb241c89de06358f47e24eb2854dd64898b5ef2f810b8c7f72c8'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jre21.0.11%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre21.0.11+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21-full'

end

