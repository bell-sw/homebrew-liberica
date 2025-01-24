cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.14,10'

	if Hardware::CPU.intel?
		sha256 'b7963f7e62466b4185fc1e3d3cdaeb91a20f8d71038c41ca3303d6e7ff30c548'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jdk17.0.14%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.14+10-macos-amd64-lite.pkg'
	else
		sha256 'dd927f365769ff36e61dccf6ce9b35a5e7d3026a505832db52eea94bfaeb9f85'

		url "https://download.bell-sw.com/java/17.0.14%2B10/bellsoft-jdk17.0.14%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.14+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

