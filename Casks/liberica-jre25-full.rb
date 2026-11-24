cask 'liberica-jre25-full' do
	desc "100% open-source Java implementation"
	version '25.0.5.1,5'

	if Hardware::CPU.intel?
		sha256 '929221f950544f2a2b40425ee30411e9c671608cae4736cf845a18bd7a8fae9b'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jre25.0.5.1%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre25.0.5.1+5-macos-amd64-full.pkg'
	else
		sha256 'e713243113104aa32d9cc9edd3bc1e658226f9f14ce923ef926877fe61ed00d7'

		url "https://download.bell-sw.com/java/25.0.5.1%2B5/bellsoft-jre25.0.5.1%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre25.0.5.1+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 25'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre25-full'

end

