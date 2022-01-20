cask 'liberica-jre11-full' do
	desc "100% open-source Java implementation"
	version '11.0.14,9'

	if Hardware::CPU.intel?
		sha256 'ecd76b76dac9eb775479aa2f1929c17d96bf7c3a9877bc4e4eddadf2d378ea8b'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jre11.0.14%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre11.0.14+9-macos-amd64-full.pkg'
	else
		sha256 '9658c9b7a560658f539f0482e09afefa5a9017cf204908c01891407e6ce21f45'

		url "https://download.bell-sw.com/java/11.0.14%2B9/bellsoft-jre11.0.14%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre11.0.14+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11-full'

end

