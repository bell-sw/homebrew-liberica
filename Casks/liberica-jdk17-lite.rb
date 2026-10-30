cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.21.0.3,5'

	if Hardware::CPU.intel?
		sha256 '29b35b2ed8d0158312a18f4e7ea950ad166202405b01a6be8218eef0fdd6512d'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jdk17.0.21.0.3%2B5-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.21.0.3+5-macos-amd64-lite.pkg'
	else
		sha256 '0686299519b46cf39db62e5dfa62caac1b828d527fe58e89503dd5837f7ff2d2'

		url "https://download.bell-sw.com/java/17.0.21.0.3%2B5/bellsoft-jdk17.0.21.0.3%2B5-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.21.0.3+5-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

