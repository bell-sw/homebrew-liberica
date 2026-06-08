cask 'liberica-jdk26-lite' do
	desc "100% open-source Java implementation"
	version '26.0.1,10'

	if Hardware::CPU.intel?
		sha256 '9d67cf7a433138d4a17dce014920bf2a9e8df4f82c9188c5a5bf77edddb6245a'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jdk26.0.1%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk26.0.1+10-macos-amd64-lite.pkg'
	else
		sha256 '7604e1241dc273527e01600b6f99fcbf79c65f19789c33538c388628568b8874'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jdk26.0.1%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk26.0.1+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk26-lite'

end

