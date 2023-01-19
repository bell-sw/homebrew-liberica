cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.18,10'

	if Hardware::CPU.intel?
		sha256 '02eee62e7f34a492adc07b6f4f8f3d3cdc88c931c6c0ba50ebe059ee46d4d738'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.18+10-macos-amd64-lite.pkg'
	else
		sha256 'dbdea876fcd5fb861eb799ad323825f0e385dfc3e56a4ec882c0ce6309625048'

		url "https://download.bell-sw.com/java/11.0.18%2B10/bellsoft-jdk11.0.18%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.18+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

