cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.8,12'

	if Hardware::CPU.intel?
		sha256 '5d8776b6a34a65a4c3d59548c9dcee6b62f9a232ded8e7bb68d4e0cc513b323f'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jdk21.0.8%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.8+12-macos-amd64.pkg'
	else
		sha256 'bd4160d4c3d73fe112550cbda3dd28fa81af2d6a817905329f9383ddefa23992'

		url "https://download.bell-sw.com/java/21.0.8%2B12/bellsoft-jdk21.0.8%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.8+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

