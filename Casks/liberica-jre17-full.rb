cask 'liberica-jre17-full' do
	desc "100% open-source Java implementation"
	version '17.0.18,10'

	if Hardware::CPU.intel?
		sha256 '762bb74287ececc991f69512338c95cab5b54434bf5a42baa747a4e4028ae803'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jre17.0.18%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre17.0.18+10-macos-amd64-full.pkg'
	else
		sha256 '624770de09787f11550fde83bd29a039c72b68d9769ecc987f777992b18011f7'

		url "https://download.bell-sw.com/java/17.0.18%2B10/bellsoft-jre17.0.18%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre17.0.18+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre17-full'

end

