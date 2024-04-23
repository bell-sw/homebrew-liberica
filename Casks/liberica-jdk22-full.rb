cask 'liberica-jdk22-full' do
	desc "100% open-source Java implementation"
	version '22.0.1,10'

	if Hardware::CPU.intel?
		sha256 '852a7d7ed0393333addcfcaadd05dde63afec4237a87ffa6436f9bac1281e631'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jdk22.0.1%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk22.0.1+10-macos-amd64-full.pkg'
	else
		sha256 'eab97450d2b20a348475cd34060985bc69f1c639427f8c197b3ed685894e563b'

		url "https://download.bell-sw.com/java/22.0.1%2B10/bellsoft-jdk22.0.1%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk22.0.1+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk22-full'

end

