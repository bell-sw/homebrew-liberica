cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.24,9'

	if Hardware::CPU.intel?
		sha256 '1e2c0aff7d99490601efc90f762e7bf74aa815b7d665adc0257aee3bd6f4f229'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jdk11.0.24%2B9-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.24+9-macos-amd64-lite.pkg'
	else
		sha256 'b3c570aef0bdfc6bf15783050ab167833aada9afbb3d483631178841d863dfdb'

		url "https://download.bell-sw.com/java/11.0.24%2B9/bellsoft-jdk11.0.24%2B9-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.24+9-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

