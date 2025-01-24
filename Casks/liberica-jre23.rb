cask 'liberica-jre23' do
	desc "100% open-source Java implementation"
	version '23.0.2,9'

	if Hardware::CPU.intel?
		sha256 '700e4560d9a86e3edbf512ad690e265f2e041d37111cf3e128c68c4e299c2e6f'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jre23.0.2%2B9-macos-amd64.pkg"
  		pkg 'bellsoft-jre23.0.2+9-macos-amd64.pkg'
	else
		sha256 '909c62248d2429a77133b8acde5f635bbb663ae19655e23b8f4c5f3aece9630a'

		url "https://download.bell-sw.com/java/23.0.2%2B9/bellsoft-jre23.0.2%2B9-macos-aarch64.pkg"
  		pkg 'bellsoft-jre23.0.2+9-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre23'

end

