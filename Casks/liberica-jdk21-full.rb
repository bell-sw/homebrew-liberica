cask 'liberica-jdk21-full' do
	desc "100% open-source Java implementation"
	version '21.0.12.1,1'

	if Hardware::CPU.intel?
		sha256 '89d8c751ae69452e3439c4ccc5a7827ade721bf9ebafae2033ed17a37eb9149a'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jdk21.0.12.1%2B1-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk21.0.12.1+1-macos-amd64-full.pkg'
	else
		sha256 'ee8f6192c28fc071091f9cbd86ff6ba794fbf56f64a4fab5894b12eaef721020'

		url "https://download.bell-sw.com/java/21.0.12.1%2B1/bellsoft-jdk21.0.12.1%2B1-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk21.0.12.1+1-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 21'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk21-full'

end

