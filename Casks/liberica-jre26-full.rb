cask 'liberica-jre26-full' do
	desc "100% open-source Java implementation"
	version '26.0.2,13'

	if Hardware::CPU.intel?
		sha256 '0fcc4f8e091bfb4d666a20465d6f17579f04fc85609d1139bec744a970c98072'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jre26.0.2%2B13-macos-amd64-full.pkg"
  		pkg 'bellsoft-jre26.0.2+13-macos-amd64-full.pkg'
	else
		sha256 '518b41b56f4fefb39088087b164d93f49307f0d2330a33bd81eae1d8acca7923'

		url "https://download.bell-sw.com/java/26.0.2%2B13/bellsoft-jre26.0.2%2B13-macos-aarch64-full.pkg"
  		pkg 'bellsoft-jre26.0.2+13-macos-aarch64-full.pkg'
	end

	name 'BellSoft Liberica JRE 26'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre26-full'

end

