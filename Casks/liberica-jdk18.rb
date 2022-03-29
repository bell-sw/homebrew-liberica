cask 'liberica-jdk18' do
	desc "100% open-source Java implementation"
	version '18,37'

	if Hardware::CPU.intel?
		sha256 '12d89a696c4939aaf943aa6472309608c0a7cfb9df9dbd24bed1db6313f59d50'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jdk18%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jdk18+37-macos-amd64.pkg'
	else
		sha256 '31ffc68e1f4c2c6c269dd25e4a1ebbe46b0118bf50c3a273df62f2a1bd2d09e0'

		url "https://download.bell-sw.com/java/18%2B37/bellsoft-jdk18%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk18+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk18'

end

