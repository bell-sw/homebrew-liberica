cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.19,11'

	if Hardware::CPU.intel?
		sha256 'c1f313e9b2f298b7c46b08a40ea72387cb5dd95a7ff77a1b0024162333fd7b6e'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jre17.0.19%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.19+11-macos-amd64.pkg'
	else
		sha256 '9ad8e764f18d1efcb1e1041d6f1a0bc56db9681904204452a2b6949cdc065423'

		url "https://download.bell-sw.com/java/17.0.19%2B11/bellsoft-jre17.0.19%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.19+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

