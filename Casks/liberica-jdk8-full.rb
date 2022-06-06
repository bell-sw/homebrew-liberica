cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,333'

	if Hardware::CPU.intel?
		sha256 'f9041e8151f7f3ad40362412376b763e0052f0c77146931db6747d36bb834627'

		url "https://download.bell-sw.com/java/8u333%2B2/bellsoft-jdk8u333%2B2-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u333+2-macos-amd64-full.pkg'
	else
		sha256 'fba3924405eb443224fb42d26b975fb55799fadb77aa4988be360f4bdb62cb7e'

		url "https://download.bell-sw.com/java/8u333%2B2/bellsoft-jdk8u333%2B2-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u333+2-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

