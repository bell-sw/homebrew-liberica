cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.21,10'

	if Hardware::CPU.intel?
		sha256 '4814d93f3b26cc0ffdf5173f64900f1df88f50c0f258e6f4a9204cfc7f22ccda'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jdk11.0.21%2B10-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.21+10-macos-amd64-lite.pkg'
	else
		sha256 '24bf6592b9335eead09a7c8d70f66a94828557e07bb8d0fd4cace25d2c28a9b2'

		url "https://download.bell-sw.com/java/11.0.21%2B10/bellsoft-jdk11.0.21%2B10-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.21+10-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

