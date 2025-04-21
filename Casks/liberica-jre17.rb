cask 'liberica-jre17' do
	desc "100% open-source Java implementation"
	version '17.0.15,10'

	if Hardware::CPU.intel?
		sha256 'c3b0a2c3faf47f11edad0f64afde8be15ab0c46b126c66c7273b2235c959961c'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jre17.0.15%2B10-macos-amd64.pkg"
  		pkg 'bellsoft-jre17.0.15+10-macos-amd64.pkg'
	else
		sha256 '8212a4e8d088959f8195356c38ef4c77bd67a249b097620d2ae74e90173c88d3'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jre17.0.15%2B10-macos-aarch64.pkg"
  		pkg 'bellsoft-jre17.0.15+10-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17'

end

