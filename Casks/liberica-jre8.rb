cask 'liberica-jre8' do
	desc "100% open-source Java implementation"
	version '1.8.0,514'

	if Hardware::CPU.intel?
		sha256 '828ca9e93118302c247cd1cb2add8130527e679c131eda64f9feb85d3160bfd5'

		url "https://download.bell-sw.com/java/8u514%2B5/bellsoft-jre8u514%2B5-macos-amd64.pkg"
  		pkg 'bellsoft-jre8u514+5-macos-amd64.pkg'
	else
		sha256 '543eefc1960ec45a76cd02e710f512219ddcc19d30e9268a0b7714ae9fb2c01a'

		url "https://download.bell-sw.com/java/8u514%2B5/bellsoft-jre8u514%2B5-macos-aarch64.pkg"
  		pkg 'bellsoft-jre8u514+5-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8'

end

