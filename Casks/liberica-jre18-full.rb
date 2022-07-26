cask 'liberica-jre18-full' do
	desc "100% open-source Java implementation"
	version '18.0.2,10'

	if Hardware::CPU.intel?
		sha256 'bc2af76a569048aa663d80a43b11d8437957656bc8b91705a94f101eb888692b'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jre18.0.2%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre18.0.2+10-macos-amd64-full.pkg'
	else
		sha256 'd4d50fb47e94768141bf1d9edded61c6d4e6c6887b88ace4d5fceae91a74972c'

		url "https://download.bell-sw.com/java/18.0.2%2B10/bellsoft-jre18.0.2%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre18.0.2+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 18'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre18-full'

end

