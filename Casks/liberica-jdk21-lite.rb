cask 'liberica-jdk21-lite' do
	desc "100% open-source Java implementation"
	version '21.0.11,11'

	if Hardware::CPU.intel?
		sha256 '967f9280f159f63c95c769476f8034eb67f96f83d0199c8c5259f2f50ad97baa'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jdk21.0.11%2B11-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.11+11-macos-amd64-lite.pkg'
	else
		sha256 '2f4a39db189e489e170324ac51d31115c9f1dd1b312fd5031bf47607136825ec'

		url "https://download.bell-sw.com/java/21.0.11%2B11/bellsoft-jdk21.0.11%2B11-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk21.0.11+11-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-lite'

end

