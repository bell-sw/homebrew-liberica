cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.15.1,9'

	if Hardware::CPU.intel?
		sha256 '2511f1f338b6d061dbb9bc49bd3686dca721f04f4b9fe119127ec2c947f026b3'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jdk11.0.15.1%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+9-macos-amd64-lite.pkg'
	else
		sha256 '3efe10173e91d1d63ec077266c7e408904081d87196f2bb609cd63b55ebe23ac'

		url "https://download.bell-sw.com/java/11.0.15.1%2B9/bellsoft-jdk11.0.15.1%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.15.1+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

