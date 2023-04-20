cask 'liberica-jdk20-full' do
	desc "100% open-source Java implementation"
	version '20.0.1,10'

	if Hardware::CPU.intel?
		sha256 'b5fc2f49c170d725c8b09a181eafde9221abf3bfbb75f6cb11c86dd0a8892bc9'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk20.0.1+10-macos-amd64-full.pkg'
	else
		sha256 'ffb8bcf3e6bb6709a076567af2624b56c078770bb97a5cc1354425b0f0849a47'

		url "https://download.bell-sw.com/java/20.0.1%2B10/bellsoft-jdk20.0.1%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk20.0.1+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk20-full'

end

