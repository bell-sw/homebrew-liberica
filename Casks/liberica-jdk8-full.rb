cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,442'

	if Hardware::CPU.intel?
		sha256 '7a3a1c2f378f8962d7f9748916aa4d543e7e8a276ced4addd4704a09b1e9f001'

		url "https://download.bell-sw.com/java/8u442%2B7/bellsoft-jdk8u442%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u442+7-macos-amd64-full.pkg'
	else
		sha256 '13162f4621f58832263828717e5f1a6898f61ff1cf34845000da9495d295242a'

		url "https://download.bell-sw.com/java/8u442%2B7/bellsoft-jdk8u442%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u442+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

