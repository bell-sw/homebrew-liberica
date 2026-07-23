cask 'liberica-jdk25' do
	desc "100% open-source Java implementation"
	version '25.0.4,9'

	if Hardware::CPU.intel?
		sha256 '048b19c6fca9f38f22594e6b0b926fc8876ab0801e332f689fa15ce52ef96799'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jdk25.0.4%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk25.0.4+9-macos-amd64.pkg'
	else
		sha256 '6d478506f7d87c53bf5a5936b333fff827bbb7b03d5d51c1bf757a5aaee2dc9e'

		url "https://download.bell-sw.com/java/25.0.4%2B9/bellsoft-jdk25.0.4%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk25.0.4+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25'

end

