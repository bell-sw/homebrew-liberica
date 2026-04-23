cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.31,11'

	if Hardware::CPU.intel?
		sha256 '3e05e6ac089c1e03a71f7a6224d1b4fd7be35d319530dadb7d774e6d5358d328'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jre11.0.31%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.31+11-macos-amd64-full.pkg'
	else
		sha256 '0a654c7adef3335da6826aa31df0fb9a460ca6b06bf6cf8273038ad958612105'

		url "https://download.bell-sw.com/java/11.0.31%2B11/bellsoft-jre11.0.31%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.31+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

