cask 'liberica-jre26-full' do
	desc "100% open-source Java implementation"
	version '26.0.1,10'

	if Hardware::CPU.intel?
		sha256 'efa14c73c23cd4e50769181b0acd53ffd3ed6607c427cbe62402d48142d79776'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jre26.0.1%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre26.0.1+10-macos-amd64-full.pkg'
	else
		sha256 '08405715057c0ce4d2aa264da909008c2ac32b7f17ae5a1b11bd9156480bb6c6'

		url "https://download.bell-sw.com/java/26.0.1%2B10/bellsoft-jre26.0.1%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre26.0.1+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre26-full'

end

