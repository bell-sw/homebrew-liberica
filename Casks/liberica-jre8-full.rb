cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,514'

	if Hardware::CPU.intel?
		sha256 '01b0715466e7f16301c0a3a85b3534c253790a77e4809147838ac1d9ea9f38f9'

		url "https://download.bell-sw.com/java/8u514%2B5/bellsoft-jre8u514%2B5-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u514+5-macos-amd64-full.pkg'
	else
		sha256 '20c8a94dbbcff207c7fd4ba330a8d185720cdf2dad4b31e24e6240adb935cc1e'

		url "https://download.bell-sw.com/java/8u514%2B5/bellsoft-jre8u514%2B5-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u514+5-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

