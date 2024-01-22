cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.22,12'

	if Hardware::CPU.intel?
		sha256 '0364e4924e0fff4d5c9a17ad15c879628b83c4bbab25ebba9f655b0175b7d1ae'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jdk11.0.22%2B12-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.22+12-macos-amd64-full.pkg'
	else
		sha256 '210164e8303e91603360f60b2a16bcacff8d0197d1224a4d58264a389453aa87'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jdk11.0.22%2B12-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.22+12-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

