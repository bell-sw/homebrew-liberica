cask 'liberica-jdk23-lite' do
	desc "100% open-source Java implementation"
	version '23,38'

	if Hardware::CPU.intel?
		sha256 '84588c686fa7501fde5b2bca537c230f24f8e02298a85310fb54ad75de6b06b0'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jdk23%2B38-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk23+38-macos-amd64-lite.pkg'
	else
		sha256 'aa8c1cdc8a27d6ba694b075aea1cf20d704e8c32d04d3806c14853e01eea8143'

		url "https://download.bell-sw.com/java/23%2B38/bellsoft-jdk23%2B38-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk23+38-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 23'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk23-lite'

end

