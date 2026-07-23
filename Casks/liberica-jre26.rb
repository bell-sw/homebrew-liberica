cask 'liberica-jre26' do
	desc "100% open-source Java implementation"
	version '26.0.2,13'

	if Hardware::CPU.intel?
		sha256 '33d2b2651dbc6721a2a746992d12d51a2e7126639642de759c8ebf1b40509caa'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jre26.0.2%2B13-macos-amd64.pkg"
  		pkg 'bellsoft-jre26.0.2+13-macos-amd64.pkg'
	else
		sha256 'bc84ebc85cf79c76bc045c63b273e33c71ed732da611032a71bb5b9fd1ea9502'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jre26.0.2%2B13-macos-aarch64.pkg"
  		pkg 'bellsoft-jre26.0.2+13-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre26'

end

