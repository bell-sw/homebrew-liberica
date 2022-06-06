cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,9'

	if Hardware::CPU.intel?
		sha256 '370703b1575f6815e0304443040177915f78fad135a8630037aa286e7afac740'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jdk11.0.15.1%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+9-macos-amd64-full.pkg'
	else
		sha256 'c3d3af834f0355391d119e7a0e92888e5bb9564ca40a7ec4d298478b30268574'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jdk11.0.15.1%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

