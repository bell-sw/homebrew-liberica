cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.2,14'

	if Hardware::CPU.intel?
		sha256 'e2c38a1efca73c87f38aab99915eabd5e002d5aa555173bd0d9a3c6a46625e64'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jdk21.0.2%2B14-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.2+14-macos-amd64-full.pkg'
	else
		sha256 'b4758d257859154bc1731f93896585b6a5a24ecbca6c2a22ec0a759b0bf6c9d0'

		url "https://download.bell-sw.com/java/21.0.2%2B14/bellsoft-jdk21.0.2%2B14-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.2+14-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

