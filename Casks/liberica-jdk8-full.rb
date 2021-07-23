cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,302'

	if Hardware::CPU.intel?
		sha256 'ccb2f1e8f5d43f2f732ce0b5f27bbe42a21ae89c157b00364b0ca6f88a7fe6a4'

		url "https://download.bell-sw.com/java/8u302%2B8/bellsoft-jdk8u302%2B8-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u302+8-macos-amd64-full.pkg'
	else
		sha256 '7492b1884fe42598c0786e9110ec2a6e681f237d765ad954d9a33838aeeb8ce7'

		url "https://download.bell-sw.com/java/8u302%2B8/bellsoft-jdk8u302%2B8-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u302+8-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

