cask 'liberica-jdk19-lite' do
	desc "100% open-source Java implementation"
	version '19.0.1,11'

	if Hardware::CPU.intel?
		sha256 '027c3d7436fa04157ea0db9692d944165e736e6c20650bf7433cce8a52774dfe'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk19.0.1+11-macos-amd64-lite.pkg'
	else
		sha256 'ad96c567cf8766583d44c26a6c3e8f61591bc8173c81d83131537d699d28c251'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk19.0.1+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk19-lite'

end

