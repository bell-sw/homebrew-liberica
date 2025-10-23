cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.29,10'

	if Hardware::CPU.intel?
		sha256 'f5d74628dbbafa558ac38dfd8726ce1cbc6f19ec12acabfd03fbeecd2e475922'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jdk11.0.29%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.29+10-macos-amd64-full.pkg'
	else
		sha256 '2ebe7a8f65ac5f916c6cbbede537dbf811538d8c078aa860360661c39c47019d'

		url "https://download.bell-sw.com/java/11.0.29%2B10/bellsoft-jdk11.0.29%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.29+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

