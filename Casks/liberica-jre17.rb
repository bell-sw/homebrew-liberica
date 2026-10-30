cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.21.0.3,5'

	if Hardware::CPU.intel?
		sha256 '5766dfdb86fd056eb7aac2c98c4dfe7992e643b0df601df428904b3df8d1d47a'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jre17.0.21.0.3%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.21.0.3+5-macos-amd64.pkg'
	else
		sha256 'ccb5c484f370ddc348cab71da940f5104a7b2a8f66b9b265a3f516306c8cfa01'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jre17.0.21.0.3%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.21.0.3+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

