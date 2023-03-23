cask 'liberica-jre20' do
	desc "100% open-source Java implementation"
	version '20,37'

	if Hardware::CPU.intel?
		sha256 '5e2001ab7321cb6e546b5f457a0b8cec493159c06dbb1d3335bbd16ee945b7f9'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jre20%2B37-macos-amd64.pkg"
  		pkg 'bellsoft-jre20+37-macos-amd64.pkg'
	else
		sha256 '623ce182a80a4bf5d0dbfbb8d2c9d1aac58c5d7839bd954ee987f75b4d1b2872'

		url "https://download.bell-sw.com/java/20%2B37/bellsoft-jre20%2B37-macos-aarch64.pkg"
  		pkg 'bellsoft-jre20+37-macos-aarch64.pkg'
	end

	name 'BellSoft Liberica JRE 20'
	homepage 'https://bell-sw.com'

	uninstall pkgutil: 'com.bell-sw.liberica.jre20'

end

