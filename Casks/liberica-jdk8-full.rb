cask 'liberica-jdk8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,504'

	if Hardware::CPU.intel?
		sha256 '15d32b599d97981db320fcc25c40a7aa30b0dce575566c7ef6113e9737407e6f'

		url "https://download.bell-sw.com/java/8u504%2B1/bellsoft-jdk8u504%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk8u504+1-macos-amd64-full.pkg'
	else
		sha256 '593ea6bbea0621eeff9f352a02146eed274d14692e60b297a0141cc97324961f'

		url "https://download.bell-sw.com/java/8u504%2B1/bellsoft-jdk8u504%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk8u504+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8-full'

end

