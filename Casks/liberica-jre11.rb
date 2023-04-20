cask 'liberica-jre11' do
	desc "100% open-source Java implementation"
	version '11.0.19,7'

	if Hardware::CPU.intel?
		sha256 'eefa7e70e59671a45911aaa8bc4cbab561f45143d9c5deac016b9d54ede59f59'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jre11.0.19%2B7-macos-amd64.pkg"
  		pkg 'bellsoft-jre11.0.19+7-macos-amd64.pkg'
	else
		sha256 '2a2f88bd6d1d994db1243493f715f10f15a847a2d8bf7221a71b3e98aabeb421'

		url "https://download.bell-sw.com/java/11.0.19%2B7/bellsoft-jre11.0.19%2B7-macos-aarch64.pkg"
  		pkg 'bellsoft-jre11.0.19+7-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre11'

end

