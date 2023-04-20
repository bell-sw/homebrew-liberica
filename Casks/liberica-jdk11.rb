cask 'liberica-jdk11' do
	desc "100% open-source Java implementation"
	version '11.0.19,7'

	if Hardware::CPU.intel?
		sha256 '6da8a92abf94bb187d4c2b3535379be7cec60d502ddb7f8e4cdfdd686224fd70'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jdk11.0.19%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk11.0.19+7-macos-amd64.pkg'
	else
		sha256 'c22eb23da7d63cd7d3797ed383fdeff04f417da80b745c652968dff7503b4f34'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jdk11.0.19%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk11.0.19+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11'

end

