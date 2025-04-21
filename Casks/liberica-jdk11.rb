cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.27,9'

	if Hardware::CPU.intel?
		sha256 '5b2ef093a8e99f733ad7e38c0c2bc20be2f69373fc2812d55b339093f91cbfd9'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jdk11.0.27%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.27+9-macos-amd64.pkg'
	else
		sha256 '071efbe4f3e9bc50c5e570767d8b24b1a42b3a94fe3764564e739bf13019e2fb'

		url "https://download.bell-sw.com/java/11.0.27%2B9/bellsoft-jdk11.0.27%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.27+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

