cask 'liberica-jdk23-full' do
	desc "100% open-source Java implementation"
	version '23.0.1,13'

	if Hardware::CPU.intel?
		sha256 'f73d8ad54fe289a9394e17fc58c7881ab7ee793de121b9f4f2387fe6e47d123b'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jdk23.0.1%2B13-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk23.0.1+13-macos-amd64-full.pkg'
	else
		sha256 '0c44b3fd3f73e810ec9c26c2a5b2dd792e80d12e703326a79318dbad15e180e1'

		url "https://download.bell-sw.com/java/23.0.1%2B13/bellsoft-jdk23.0.1%2B13-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk23.0.1+13-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk23-full'

end

