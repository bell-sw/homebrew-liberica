cask 'liberica-jdk8' do
	desc "100% open-source Java implementation"
	version '1.8.0,345'

	if Hardware::CPU.intel?
		sha256 'e16c22aba98f5bd217fb1aba2a7d8ecadcd668df29752e87e794814bd7170991'

		url "https://download.bell-sw.com/java/8u345%2B1/bellsoft-jdk8u345%2B1-macos-amd64.pkg"
  		pkg 'bellsoft-jdk8u345+1-macos-amd64.pkg'
	else
		sha256 '732a997edad4ad5435239532906b68f6921fdf77aab58c865e7ed0e38629a439'

		url "https://download.bell-sw.com/java/8u345%2B1/bellsoft-jdk8u345%2B1-macos-aarch64.pkg"
  		pkg 'bellsoft-jdk8u345+1-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JDK 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk8'

end

