cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,2'

	if Hardware::CPU.intel?
		sha256 'e3ce6b2ef1d391aaf0dcd4fe5aa5da42795fd9a99fb3761871be000c779026d4'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jdk11.0.15.1%2B2-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+2-macos-amd64-lite.pkg'
	else
		sha256 'e9d793d0c385d2bdeba9e9a41baa4ed5791b180f07320eb734560e066215c049'

		url "https://download.bell-sw.com/java/11.0.15.1%2B2/bellsoft-jdk11.0.15.1%2B2-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+2-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

