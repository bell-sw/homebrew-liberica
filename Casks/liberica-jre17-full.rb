cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.19,11'

	if Hardware::CPU.intel?
		sha256 '22cb466c8db1a9b250db124802d5377adc8aa457adae85224e88030490223580'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jre17.0.19%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.19+11-macos-amd64-full.pkg'
	else
		sha256 '6f9229a173494f937aee6ca72525b9d92134b32145a8dacbed3a62ce2ed74914'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jre17.0.19%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.19+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

