cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,452'

	if Hardware::CPU.intel?
		sha256 '32549a67e21ee513ebaf244a856be61071719794f64f1b0edf3ed91cb0a484d0'

		url "https://download.bell-sw.com/java/8u452%2B11/bellsoft-jre8u452%2B11-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u452+11-macos-amd64-full.pkg'
	else
		sha256 'efd2eba98a3ebabad755a51c9ed33810ef7cd8e4427ad40e7b347e35c98c94b3'

		url "https://download.bell-sw.com/java/8u452%2B11/bellsoft-jre8u452%2B11-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u452+11-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

