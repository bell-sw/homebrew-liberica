cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.23,10'

	if Hardware::CPU.intel?
		sha256 '9c169dfb06c2d80d88003c896603e64e1a0425c39372d890af56a7c3afef9ed0'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jdk11.0.23%2B10-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.23+10-macos-amd64-full.pkg'
	else
		sha256 'c3516e7f007b4a6220bcb16d40be2b01ef2bc5b728eeac284fc438897b2f2031'

		url "https://download.bell-sw.com/java/11.0.23%2B10/bellsoft-jdk11.0.23%2B10-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.23+10-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

