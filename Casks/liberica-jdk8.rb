cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,372'

	if Hardware::CPU.intel?
		sha256 '60a551f105109ac051c5bf8c35ffecc22a8fc335ac1e794f7395cd3664c3e639'

		url "https://download.bell-sw.com/java/8u372%2B7/bellsoft-jdk8u372%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u372+7-macos-amd64.pkg'
	else
		sha256 '2f04500267f08bc17e0add0764814bb7f29d7a42182bc8e49f7d1a381d5a3c50'

		url "https://download.bell-sw.com/java/8u372%2B7/bellsoft-jdk8u372%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u372+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

