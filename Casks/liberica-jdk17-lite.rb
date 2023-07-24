cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.8,7'

	if Hardware::CPU.intel?
		sha256 'b6e8fc8aede56405ce7de1ffcbf4e50f6272564d4ff0de5a8958459b43c40bb5'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jdk17.0.8%2B7-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.8+7-macos-amd64-lite.pkg'
	else
		sha256 'cf0c6ad7d6e498c2d0b6833b06eef2aa8a8a6738d0b8e670e5eeeae1fd0f67bf'

		url "https://download.bell-sw.com/java/17.0.8%2B7/bellsoft-jdk17.0.8%2B7-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.8+7-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

