cask 'liberica-jdk19-full' do
	desc "100% open-source Java implementation"
	version '19.0.2,9'

	if Hardware::CPU.intel?
		sha256 '4684707ee08dcd4be48d1a8a7b5b6b8512d7198ff671e4778966e58abca61239'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk19.0.2+9-macos-amd64-full.pkg'
	else
		sha256 '5ea7c65f9fe6aaf5c8f0fa0befa3959a7e0eb95c4b180181e2f16b8dae13bea5'

		url "https://download.bell-sw.com/java/19.0.2%2B9/bellsoft-jdk19.0.2%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk19.0.2+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 19'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk19-full'

end

