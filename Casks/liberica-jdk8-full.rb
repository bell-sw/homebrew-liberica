cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,472'

	if Hardware::CPU.intel?
		sha256 '243c20a8d7071c44266d40764d8f8787dd10c90373048594a60cc59fba941438'

		url "https://download.bell-sw.com/java/8u472%2B9/bellsoft-jdk8u472%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u472+9-macos-amd64-full.pkg'
	else
		sha256 '63ddcdaf4e499d4db57b989caf7dea5f22e801cf76aa98adf2e8df04d3c01211'

		url "https://download.bell-sw.com/java/8u472%2B9/bellsoft-jdk8u472%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u472+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

