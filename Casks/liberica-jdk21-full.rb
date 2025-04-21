cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.7,9'

	if Hardware::CPU.intel?
		sha256 '19022c7642ae83a51e43404fc40241109b0b8a435929e865302f9c61ac4f5be0'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jdk21.0.7%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.7+9-macos-amd64-full.pkg'
	else
		sha256 '7ca30b5d1377531b52b7c3439fb3ccd9f6dba3a03a1ac8267ccd61b26f67f48c'

		url "https://download.bell-sw.com/java/21.0.7%2B9/bellsoft-jdk21.0.7%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.7+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

