cask 'liberica-jre22' do
	desc "100% open-source Java implementation"
	version '22,37'

	if Hardware::CPU.intel?
		sha256 '88eda95637b62eb7a8e43c3c574e4ffe6242794d04f5b2bd0c2c899e2f9e4017'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jre22%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jre22+37-macos-amd64.pkg'
	else
		sha256 '5ef329b8f12e82c01fb15e7300013608714867ede1176753f3866f82621d1514'

		url "https://download.bell-sw.com/java/22%2B37/bellsoft-jre22%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jre22+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 22'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre22'

end

