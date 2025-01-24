cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.26,9'

	if Hardware::CPU.intel?
		sha256 '21e7056da2113cf7807cbbe50b906dc5d10d19f5166e8c025ad884c606fd8647'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jdk11.0.26%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.26+9-macos-amd64-lite.pkg'
	else
		sha256 'fad82c5152d68a0196a21b3b411e91d09b9b0b220c135f69ce50ec7f4226c155'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jdk11.0.26%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.26+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

