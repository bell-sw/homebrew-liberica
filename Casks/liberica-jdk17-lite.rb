cask 'liberica-jdk17-lite' do
	desc "100% open-source Java implementation"
	version '17.0.21.1,5'

	if Hardware::CPU.intel?
		sha256 'e6029645c2d4f6dc14c375b2b5f45ec739aaf9ff9708a10314f157f19d9d5a5e'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jdk17.0.21.1%2B5-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.21.1+5-macos-amd64-lite.pkg'
	else
		sha256 '6bcbd0c76a6cf8cd383de7b2d47987642d670eab041d6c9fbd11571652fea9f3'

		url "https://download.bell-sw.com/java/17.0.21.1%2B5/bellsoft-jdk17.0.21.1%2B5-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk17.0.21.1+5-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 17'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk17-lite'

end

