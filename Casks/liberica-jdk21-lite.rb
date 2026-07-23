cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.12,10'

	if Hardware::CPU.intel?
		sha256 'ed4f0475bd78c48b27bbd2f5f42ecfad9325d3a716d5f1adc29b4ce471839fcf'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jdk21.0.12%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.12+10-macos-amd64-lite.pkg'
	else
		sha256 'b7b291dd462a7f06c1f1fda65c9928a2019c931fa8a0de59f79cbf9b0eee52fb'

		url "https://download.bell-sw.com/java/21.0.12%2B10/bellsoft-jdk21.0.12%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.12+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

