cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.6,10'

	if Hardware::CPU.intel?
		sha256 '6fe39cccc3bebdd0ebfe4aabe1c4ff3a3220586491d2f86765acc52563f1c1bd'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jdk21.0.6%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.6+10-macos-amd64-full.pkg'
	else
		sha256 '0374254ea1eff0eb26d3a3d3c2bbc03e8fa9bb2aaa259ed0cbfb7065f63f1b28'

		url "https://download.bell-sw.com/java/21.0.6%2B10/bellsoft-jdk21.0.6%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.6+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

