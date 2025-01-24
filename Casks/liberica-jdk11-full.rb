cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.26,9'

	if Hardware::CPU.intel?
		sha256 '2f2e28f571c7ccc5ea70c828b7d298420dca77e67b5da07bd17a508c458350fe'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jdk11.0.26%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.26+9-macos-amd64-full.pkg'
	else
		sha256 '223c9ca9b425199b2e188fa7941957d877b0655c59ab02e121192f71ee0438b6'

		url "https://download.bell-sw.com/java/11.0.26%2B9/bellsoft-jdk11.0.26%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.26+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

