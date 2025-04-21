cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,452'

	if Hardware::CPU.intel?
		sha256 '336495c2511fdf8b56efa0e1cab92502e89d5edfa2c856d49da0ebfe2a21747a'

		url "https://download.bell-sw.com/java/8u452%2B11/bellsoft-jre8u452%2B11-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u452+11-macos-amd64.pkg'
	else
		sha256 'd9e8e275b4bbfa7ac45929aa503c2edbe3ca19d417f7fd4ed262b02972eec3d2'

		url "https://download.bell-sw.com/java/8u452%2B11/bellsoft-jre8u452%2B11-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u452+11-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

