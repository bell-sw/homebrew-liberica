cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.12,10'

	if Hardware::CPU.intel?
		sha256 '139667d796c02b5514dd4060d3dc25dc27da5e17400934208455e480e86eb69c'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jre21.0.12%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.12+10-macos-amd64.pkg'
	else
		sha256 '77e77a96505e3ff6862ab875bf265d2fdb0b90829367895884555b073e9775d0'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jre21.0.12%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.12+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

