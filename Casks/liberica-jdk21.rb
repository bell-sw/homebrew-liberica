cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21.0.1,12'

	if Hardware::CPU.intel?
		sha256 'a7c0b1c52c53192d211bf04037d3a41a33a4ca59a4cc5471adb6aec00e531883'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jdk21.0.1%2B12-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21.0.1+12-macos-amd64.pkg'
	else
		sha256 'ea25bfb9c229612ddf8c0caa468e217e0eaac9fba9c3694b5905a86495c4ffb4'

		url "https://download.bell-sw.com/java/21.0.1%2B12/bellsoft-jdk21.0.1%2B12-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21.0.1+12-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

