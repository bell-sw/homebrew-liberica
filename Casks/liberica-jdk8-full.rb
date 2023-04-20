cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,372'

	if Hardware::CPU.intel?
		sha256 '2978ee90094ac1326af82558cbb2518ccf9e067911527b6a51d4cf41485c0949'

		url "https://download.bell-sw.com/java/8u372%2B7/bellsoft-jdk8u372%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u372+7-macos-amd64-full.pkg'
	else
		sha256 'd2d750b983e225a1d973601dc0a4d89372a0f555ad170122231d636af2ee3725'

		url "https://download.bell-sw.com/java/8u372%2B7/bellsoft-jdk8u372%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u372+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

