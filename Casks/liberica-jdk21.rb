cask 'liberica-jdk21' do
	desc "100% open-source Java implementation"
	version '21,37'

	if Hardware::CPU.intel?
		sha256 'e4cbf18725062633ae8abc2dea99433a90f7f98d8cc70d31e815271c538cea3f'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jdk21%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jdk21+37-macos-amd64.pkg'
	else
		sha256 '572b4a41bbb35d9562598b7cf4d23c186a0d23f7574412bb7fcb55105d77d46c'

		url "https://download.bell-sw.com/java/21%2B37/bellsoft-jdk21%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk21+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21'

end

