cask 'liberica-jdk25-full' do
	desc "100% open-source Java implementation"
	version '25.0.5.0.3,5'

	if Hardware::CPU.intel?
		sha256 '9c69f8ec844bf6977af7bdcd6b676b47303b70b550c9a75faa53430bed3fa664'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jdk25.0.5.0.3%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk25.0.5.0.3+5-macos-amd64-full.pkg'
	else
		sha256 '9ec05a851544d7b870bda963f06b241f91e5821185472e4a4903cf7460da3d59'

		url "https://download.bell-sw.com/java/25.0.5.0.3%2B5/bellsoft-jdk25.0.5.0.3%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk25.0.5.0.3+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk25-full'

end

