cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.15,10'

	if Hardware::CPU.intel?
		sha256 'a490c3eb1e0f0823c679483acc730c124cebcb88162f20fa70a8b6d532a791a8'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jre17.0.15%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.15+10-macos-amd64-full.pkg'
	else
		sha256 '4853ab8849b8ba9bbfbf9087df04dc4809c3ab8a1bf2614368305bd35d4e9af4'

		url "https://download.bell-sw.com/java/17.0.15%2B10/bellsoft-jre17.0.15%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.15+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

