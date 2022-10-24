cask 'liberica-jdk19-full' do
	desc "100% open-source Java implementation"
	version '19.0.1,11'

	if Hardware::CPU.intel?
		sha256 '2d8ac09704b5569553b12035a88daa0f73bb9e7b46d6afd955d8b6eb789bb525'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk19.0.1+11-macos-amd64-full.pkg'
	else
		sha256 '60b86c0f2ca72b2a6de063ccc55788fb1a6ae4ec4243850d93ea8b57283f313f'

		url "https://download.bell-sw.com/java/19.0.1%2B11/bellsoft-jdk19.0.1%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk19.0.1+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk19-full'

end

