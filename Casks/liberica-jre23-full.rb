cask 'liberica-jre23-full' do
	desc "100% open-source Java implementation"
	version '23.0.1,13'

	if Hardware::CPU.intel?
		sha256 'ab70ba73c330532c77761476262d420e23c567da6dadcf43579fb26b42cdb4e2'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jre23.0.1%2B13-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre23.0.1+13-macos-amd64-full.pkg'
	else
		sha256 'b738a372bed82a5c87456ec9318ef221de9d674f5ab9945f67d2b5e9e5e8c67c'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jre23.0.1%2B13-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre23.0.1+13-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre23-full'

end

