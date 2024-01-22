cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.10,13'

	if Hardware::CPU.intel?
		sha256 '808d1bd50408ab49eb14d44b6dc4503b0f3930604ed95115f9dc2a8fd37c3f6b'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jdk17.0.10%2B13-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.10+13-macos-amd64-lite.pkg'
	else
		sha256 '8ed8033975df38ff028be2e4ebc32717a5dd687d157929c0039fb1c52f78cf42'

		url "https://download.bell-sw.com/java/17.0.10%2B13/bellsoft-jdk17.0.10%2B13-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.10+13-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

