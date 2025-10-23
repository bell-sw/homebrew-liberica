cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.9,11'

	if Hardware::CPU.intel?
		sha256 'b965ea6427f87cf5452d6979d9c8dc6b7cb8462a2d89f3ad8ff4a86df0468ccc'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jdk21.0.9%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.9+11-macos-amd64-full.pkg'
	else
		sha256 '726f610eec38f25e72c1a947db07778b26025dc569e68793da521af7c3e136ef'

		url "https://download.bell-sw.com/java/21.0.9%2B11/bellsoft-jdk21.0.9%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.9+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

