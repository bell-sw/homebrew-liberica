cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,432'

	if Hardware::CPU.intel?
		sha256 '86426100b1af409b453fa18ff9b20d3b39e8a2a6f83c8277cd5f5b39c39a999b'

		url "https://download.bell-sw.com/java/8u432%2B7/bellsoft-jre8u432%2B7-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u432+7-macos-amd64-full.pkg'
	else
		sha256 'c386db38b78269f6fa8e11c00d7b13165712ead126fff3f831fd3359f8e76ca9'

		url "https://download.bell-sw.com/java/8u432%2B7/bellsoft-jre8u432%2B7-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u432+7-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

