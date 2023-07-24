cask 'liberica-jre8-full' do
	desc "100% open-source Java implementation"
	version '1.8.0,382'

	if Hardware::CPU.intel?
		sha256 'b6f0291a5436d5c9de070306861b196d8ac9e28d688a7ca4b35e7f56cae218e5'

		url "https://download.bell-sw.com/java/8u382%2B6/bellsoft-jre8u382%2B6-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre8u382+6-macos-amd64-full.pkg'
	else
		sha256 '61f6f711f9f9ab27f2f07390d25f04470a25237769579e094d8f35e37ffca03c'

		url "https://download.bell-sw.com/java/8u382%2B6/bellsoft-jre8u382%2B6-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre8u382+6-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 8'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre8-full'

end

