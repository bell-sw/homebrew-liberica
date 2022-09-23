cask 'liberica-jre19' do
	desc "100% open-source Java implementation"
	version '19,37'

	if Hardware::CPU.intel?
		sha256 '7737a6572bc8eea62b957b0c137096600c36a0ebc1c782cd0db716662f8c1bf0'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jre19%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jre19+37-macos-amd64.pkg'
	else
		sha256 '8d47aeb2c2390b4aa8ba9967597148c72b825bd81422b45ac116772041c3b083'

		url "https://download.bell-sw.com/java/19%2B37/bellsoft-jre19%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jre19+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre19'

end

