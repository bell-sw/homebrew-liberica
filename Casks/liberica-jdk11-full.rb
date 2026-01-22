cask 'liberica-jdk11-full' do
	desc "100% open-source Java implementation"
	version '11.0.30,9'

	if Hardware::CPU.intel?
		sha256 'fcd0edd5727997e72f418a3ce8c149596959e6f9e702cf3b79000ffbef38cacb'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jdk11.0.30%2B9-macos-amd64-full.pkg"
  		pkg 'bellsoft-jdk11.0.30+9-macos-amd64-full.pkg'
	else
		sha256 'c5d30764be66b5572538151403de8b042c7c4fa81bd3c98e312d8f4c323f2944'

		url "https://download.bell-sw.com/java/11.0.30%2B9/bellsoft-jdk11.0.30%2B9-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jdk11.0.30+9-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-full'

end

