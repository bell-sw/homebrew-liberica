cask 'liberica-jdk20-full' do
	desc "100% open-source Java implementation"
	version '20.0.2,10'

	if Hardware::CPU.intel?
		sha256 '42cbe30824e3c84626bf7b91cadc27875d748d13099a2371e78618d5a209e1ba'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jdk20.0.2%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk20.0.2+10-macos-amd64-full.pkg'
	else
		sha256 'c2a2314bf95739d4092e242b36d633baf8d735e68a4d595574e8d36fd3481562'

		url "https://download.bell-sw.com/java/20.0.2%2B10/bellsoft-jdk20.0.2%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk20.0.2+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk20-full'

end

