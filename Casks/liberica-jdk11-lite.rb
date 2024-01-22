cask 'liberica-jdk11-lite' do
	desc "100% open-source Java implementation"
	version '11.0.22,12'

	if Hardware::CPU.intel?
		sha256 'c1197e680f2334290f7cc03a92c54caaf345b93ba6d01b404c147ce1d3fab3e5'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jdk11.0.22%2B12-macos-amd64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.22+12-macos-amd64-lite.pkg'
	else
		sha256 '9ee6114c81268bff1dcd2f5215337be8cdc5bcb8ea42c9711ddb3b90dd29bf98'

		url "https://download.bell-sw.com/java/11.0.22%2B12/bellsoft-jdk11.0.22%2B12-macos-aarch64-lite.pkg"
  		pkg 'bellsoft-jdk11.0.22+12-macos-aarch64-lite.pkg'
	end

	name 'BellSoft Liberica JDK 11'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jdk11-lite'

end

