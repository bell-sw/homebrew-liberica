cask 'liberica-jre27' do
	desc "100% open-source Java implementation"
	version '27.0.1.1,5'

	if Hardware::CPU.intel?
		sha256 '4bc694292f0a6905ed564ac72ded0e79fc925cd14ccb7e380e2189f379412ab8'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jre27.0.1.1%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre27.0.1.1+5-macos-amd64.pkg'
	else
		sha256 '3ccbd543d5a12f78f6e684c337cb18d409ea8ab026de886ef79622cf14051080'

		url "https://download.bell-sw.com/java/27.0.1.1%2B5/bellsoft-jre27.0.1.1%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre27.0.1.1+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 27'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre27'

end

