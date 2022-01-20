cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,322'

	if Hardware::CPU.intel?
		sha256 'ec4c729229a16b2df892f683a94be12a65852c86ed96155c2932b4b50d053cde'

		url "https://download.bell-sw.com/java/8u322%2B6/bellsoft-jdk8u322%2B6-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u322+6-macos-amd64-full.pkg'
	else
		sha256 'aa51a48422cabd116548c87c6cec7507983e8d0af12ae3581e62fa67886689de'

		url "https://download.bell-sw.com/java/8u322%2B6/bellsoft-jdk8u322%2B6-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u322+6-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

