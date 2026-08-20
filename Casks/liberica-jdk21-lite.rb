cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.12.1,1'

	if Hardware::CPU.intel?
		sha256 '4fd09622d957c07c4da85ded429bd1a20eb99f6c54fc46652e59d72d2e892694'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jdk21.0.12.1%2B1-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.12.1+1-macos-amd64-lite.pkg'
	else
		sha256 '236d72b31b7ed2bd82c69c2fe3198d177e6f3af1e57d4d93f50606c96955f07f'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jdk21.0.12.1%2B1-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.12.1+1-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

