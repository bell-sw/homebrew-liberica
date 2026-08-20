cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.32.1,1'

	if Hardware::CPU.intel?
		sha256 '6946d571815eec428d73a7de4cfeb5ec503d76ad34f7b690569739675760ecd9'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jre11.0.32.1%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.32.1+1-macos-amd64.pkg'
	else
		sha256 'd0f9e25c2f34bb82bb298f94b634c7416dec3f0f9dd75f2df934238a2e42dd6b'

		url "https://download.bell-sw.com/java/11.0.32.1%2B1/bellsoft-jre11.0.32.1%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.32.1+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

