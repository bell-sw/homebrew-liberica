cask 'liberica-jre21' do
	desc "100% open-source Java implementation"
	version '21.0.6,10'

	if Hardware::CPU.intel?
		sha256 '469058e56f3acd6e9478931d62d7adba4f94c9243963a0f53dbb65789c894f84'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jre21.0.6%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre21.0.6+10-macos-amd64.pkg'
	else
		sha256 '600626a48e001e661fb89163d050850e36e500e5a25a9894c8d81c3989d36081'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jre21.0.6%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre21.0.6+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre21'

end

